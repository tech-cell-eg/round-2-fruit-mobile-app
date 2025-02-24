import 'package:fruit_app/core/apis/api_constants.dart';

class ErrorModel {
  final bool success;
  final String message;

  ErrorModel({required this.success, required this.message});

  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorModel(
      success: jsonData[ApiConstants.success],
      message: jsonData[ApiConstants.message],
    );
  }
}
