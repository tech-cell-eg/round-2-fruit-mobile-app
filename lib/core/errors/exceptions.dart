import 'package:dio/dio.dart';
import 'package:fruit_app/core/errors/error_model.dart';

class ServerExceptions implements Exception {
  final ErrorModel errorModel;

  ServerExceptions({required this.errorModel});

}

void handleDioExceptions(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        throw ServerExceptions(errorModel: e.response!.data);
      case DioExceptionType.sendTimeout:
        throw ServerExceptions(errorModel: e.response!.data);
      case DioExceptionType.receiveTimeout:
        throw ServerExceptions(errorModel: e.response!.data);
      case DioExceptionType.badCertificate:
        throw ServerExceptions(errorModel: e.response!.data);
      case DioExceptionType.cancel:
        throw ServerExceptions(errorModel: e.response!.data);
      case DioExceptionType.connectionError:
        throw ServerExceptions(errorModel: e.response!.data);
      case DioExceptionType.unknown:
        throw ServerExceptions(errorModel: e.response!.data);
    
      // deliverd to DB, but there is something wrong
      case DioExceptionType.badResponse:
        switch(e.response?.statusCode){
          case 400:    // bad request
            throw ServerExceptions(errorModel: e.response!.data);
          case 401:    // unothorized
            throw ServerExceptions(errorModel: e.response!.data);
          case 403:    // forbidden
            throw ServerExceptions(errorModel: e.response!.data);
          case 404:    // not found
            throw ServerExceptions(errorModel: e.response!.data);
          case 409:    // cooffient
            throw ServerExceptions(errorModel: e.response!.data);
          case 422:    // unaproccesable entity
            throw ServerExceptions(errorModel: e.response!.data);
          case 504:    // server exception
            throw ServerExceptions(errorModel: e.response!.data);
        }
    }
  }
