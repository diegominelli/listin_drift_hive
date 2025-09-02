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

  Future<void> saveLocalToServer(AppDatabase appDatabase) async {
    Map<String, dynamic> localData = await LocalDataHandler().localDataToMap(
      appdatabase: appDatabase,
    );

    await _dio.put("listins.json", data: jsonEncode(localData['listins']));
  }

  getDataFromServer(AppDatabase appDatabase) async {
    Response response = await _dio.get("listins.json");

    // print(response.statusCode);
    // print(response.headers.toString());
    // print(response.data);
    // print(response.runtimeType);

    if (response.data != null) {
      if ((response.data as List<dynamic>).isNotEmpty) {
        Map<String, dynamic> map = {};

        map['listins'] = response.data;

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
