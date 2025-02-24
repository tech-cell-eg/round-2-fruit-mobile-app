import 'package:dio/dio.dart';
import 'package:fruit_app/core/apis/api_constants.dart';

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[ApiConstants.acceptHeader] = 'application/json';
    super.onRequest(options, handler);
  }
}
