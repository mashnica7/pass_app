import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/shared_prefs_ids.dart';
import 'endpoints.dart';

@lazySingleton
class Api {
  final Dio dio;
  final SharedPreferences sharedPreferences;

  Api({@required this.dio, @required this.sharedPreferences});

  Future<Response> postRequest(String route, {String data}) async {
    addInterceptors();
    return dio.post(route, data: data);
  }

  Future<Response> patchRequest(String route, {String data}) async {
    addInterceptors();
    return dio.patch(route, data: data);
  }

  Future<Response> putRequest(String route, {String data}) async {
    addInterceptors();
    return dio.put(route, data: data);
  }

  Future<Response> getRequest(String route, {ResponseType responseType}) async {
    addInterceptors(responseType: responseType);
    return dio.get(route);
  }

  void addInterceptors({ResponseType responseType}) {
    dio.interceptors.clear();
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
      try {
        options.baseUrl = cBaseURL;

        options.connectTimeout = 10000;
        options.receiveTimeout = 30000;

        //! JWT TOKEN
        final jwt = sharedPreferences.getString(cJWTKey);
        if (jwt != null) {
          options.headers[HttpHeaders.authorizationHeader] = jwt;
        }

        options.headers.addAll({
          Headers.contentTypeHeader: Headers.jsonContentType,
          Headers.acceptHeader: Headers.jsonContentType,
        });

        if (responseType != null) {
          options.responseType = responseType;
        }

        // DEBUG PRINTS
        debugPrint(
            "Perform request:\n method: ${options.method.toUpperCase()},\n path:${options.path}, \n baseURL:${options.baseUrl}");
        if (options.headers != null) debugPrint("header:${options.headers} ");
        if (options.data != null) {
          debugPrint("data:${json.decode(options.data.toString())} ");
        }

        return options;
      } catch (e) {
        debugPrint("INTERCEPTOR error: $e");
        return options;
      }
    }));
  }
}
