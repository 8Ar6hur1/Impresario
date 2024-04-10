import 'package:dio/dio.dart';

class ApiSignUp {
  static final Dio _dio = Dio();

  static Future<void> sendDataToBackend(
    String birth_date,
    String description,
    String email,
    String first_name,
    String gender,
    String last_name,
    String password,
    String phone,
    String username,
  ) async {
    try {
      Response response = await _dio
          .post('https://vps-83a3a653.vps.ovh.net/auth/sign_up', data: {
        "birth_date": birth_date,
        "description": description,
        "email": email,
        "first_name": first_name,
        "gender": gender,
        "last_name": last_name,
        "password": password,
        "phone": phone,
        "username": username,
      });
      print('Response: ${response.data}');
    } catch (error) {
      print('Error: $error}');
    }
  }
}
