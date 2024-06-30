// ignore_for_file: deprecated_member_use

import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure('Connection Timeout withApiServer');

      case DioErrorType.sendTimeout:
        return ServerFailure('sendTimeout withApiServer');

      case DioErrorType.receiveTimeout:
        return ServerFailure('receiveTimeout withApiServer');

      case DioErrorType.badCertificate:
        return ServerFailure('badCertificate withApiServer');

      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);

      case DioErrorType.cancel:
        return ServerFailure(' request with api service cancel withApiServer');

      case DioErrorType.connectionError:
        return ServerFailure('connectionError withApiServer');

      case DioErrorType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('UnExpected Error ,Try again!');
      default:
        return ServerFailure('Opps there was an erorr ,please try again');
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
          'your request not found 404,please try again later!');
    } else if (statusCode == 500) {
      return ServerFailure('internal server error,please try again later!');
    } else {
      return ServerFailure('Opps there was an erorr ,please try again');
    }
  }
}
