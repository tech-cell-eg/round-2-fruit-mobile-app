import 'package:dio/dio.dart';
import 'package:fruit_app/core/apis/api_constants.dart';
import 'package:fruit_app/core/apis/api_interceptors.dart';
import 'package:fruit_app/core/apis/api_services.dart';
import 'package:fruit_app/core/errors/exceptions.dart';

class DioHelper extends APIServices {
  final Dio dio;

  DioHelper({required this.dio}) {
    dio.options.baseUrl = ApiConstants.baseURL;
    dio.interceptors.add(ApiInterceptors());
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      responseBody: true,
      requestHeader: true,
      error: true,
    ));
  }

  @override
  Future delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParmas,
    bool isFormData = true,
  }) async {
    try {
      final responce = await dio.delete(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        queryParameters: queryParmas,
      );
      return responce.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  Future get(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParmas,
    bool isFormData = true,
  }) async {
    try {
      final responce = await dio.get(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        queryParameters: queryParmas,
      );
      return responce.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  Future post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParmas,
    bool isFormData = true,
  }) async {
    try {
      final responce = await dio.post(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        queryParameters: queryParmas,
      );
      return responce.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  Future put(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParmas,
    bool isFormData = true,
  }) async {
    try {
      final responce = await dio.put(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        queryParameters: queryParmas,
      );
      return responce.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }
}
