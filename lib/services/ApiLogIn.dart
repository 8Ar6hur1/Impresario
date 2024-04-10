import 'package:dio/dio.dart';

class ApiLogIn {
  static final Dio _dio = Dio();

  static Future<void> sendDataToBackend(
      String login,
      String password
      ) async {
    try {
      Response response = await _dio
          .post('https://vps-83a3a653.vps.ovh.net/auth/log_in', data: {
        'login': login,
        'password': password,
      });
      print('Response: ${response.data}');
    } catch (error) {
      print('Error: $error');
    }
  }
}
