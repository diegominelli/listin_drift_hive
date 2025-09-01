import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:listin_drift_hive/_core/data/local_data_handler.dart';
import 'package:listin_drift_hive/listins/data/database.dart';

class DioService {
  final Dio _dio = Dio();

  static const String url =
      "https://flutter-dio-c89a9-default-rtdb.firebaseio.com/";

  Future<void> saveLocalToServer(AppDatabase appDatabase) async {
    Map<String, dynamic> localData = await LocalDataHandler().localDataToMap(
      appdatabase: appDatabase,
    );

    await _dio.put(
      "${url}listins.json",
      data: jsonEncode(localData['listins']),
      options: Options(contentType: 'application/json; charset=utf-8'),
    );
  }
}
