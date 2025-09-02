import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:listin_drift_hive/_core/data/local_data_handler.dart';
import 'package:listin_drift_hive/listins/data/database.dart';

class DioService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: "https://flutter-dio-c89a9-default-rtdb.firebaseio.com/",
      contentType: 'application/json; charset=utf-8',
      responseType: ResponseType.json,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    ),
  );

  DioService() {
    _dio.interceptors.add(LogInterceptor());
  }

  Future<void> saveLocalToServer(AppDatabase appDatabase) async {
    Map<String, dynamic> localData = await LocalDataHandler().localDataToMap(
      appdatabase: appDatabase,
    );

    await _dio.put("listins.json", data: jsonEncode(localData['listins']));
  }

  getDataFromServer(AppDatabase appDatabase) async {
    Response response = await _dio.get(
      "listins.json",
      queryParameters: {"orderBy": '"name"', "startAt": 0},
    );

    // print(response.statusCode);
    // print(response.headers.toString());
    // print(response.data);
    // print(response.runtimeType);

    if (response.data != null) {
      Map<String, dynamic> map = {};

      if (response.data.runtimeType == List) {
        if ((response.data as List<dynamic>).isNotEmpty) {
          map['listins'] = response.data;
        } else {
          List<Map<String, dynamic>> tempList = [];

          for (var mapResponse in (response.data as Map).values) {
            tempList.add(mapResponse);
          }

          map['listins'] = tempList;
        }
        await LocalDataHandler().mapToLocalData(
          map: map,
          appdatabase: appDatabase,
        );
      }
    }
  }

  Future<void> clearServerData() async {
    await _dio.delete("listins.json");
  }
}
