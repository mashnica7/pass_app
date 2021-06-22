import 'package:dio/dio.dart' as dio;

import '../constants/text_constants.dart';
import '../errors/failures.dart';

class ErrorUtils {
  ErrorUtils._();
  static void remoteErrorHandling(dynamic error) {
    var msg = "";
    if (error is dio.DioError) {
      if (error.response != null && error.response.statusCode == 400) {
        if (error.response.data != null &&
            error.response.data is Map<String, dynamic>) {
          final mapError = error.response.data as Map<String, dynamic>;
          if (mapError['email'] != null) {
            msg = mapError['email'][0];
          } else if (mapError['password'] != null) {
            msg = mapError['password'][0];
          } else if (mapError['message'] != null) {
            msg = mapError['message'];
          }

          throw ServerFailure(message: msg);
        } else {
          throw error;
        }
      } else if (error.response != null && error.response.statusCode == 304) {
        throw error;
      } else if (error.response != null &&
          error.response.statusMessage.isNotEmpty) {
        if (error.response.data != null) {
          if (error.response.data is String) {
            msg = error.response.data as String;
          } else if (error.response.data is Map<String, dynamic>) {
            msg = error.response.data['message'] != null
                ? error.response.data['message'] as String
                : cSomethingWentWrongMessage;
          }
        } else {
          if (error.message != null) {
            msg = error.message;
          } else {
            msg = cSomethingWentWrongMessage;
          }
        }
        throw ServerFailure(message: msg);
      }
    }
    throw const ServerFailure(message: cSomethingWentWrongMessage);
  }
}
