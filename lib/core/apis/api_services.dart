abstract class APIServices {
  Future<dynamic> get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParmas,
    bool isFormData = true,
  });

  Future<dynamic> post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParmas,
    bool isFormData = true,
  });

  Future<dynamic> put(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParmas,
    bool isFormData = true,
  });

  Future<dynamic> delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParmas,
    bool isFormData = true,
  });
}
