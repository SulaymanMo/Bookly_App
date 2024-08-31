import 'package:dio/dio.dart';

class Api {
  Api(this._dio);

  final Dio _dio;
  final String _baseUrl = 'https://www.googleapis.com/books/v1/volumes?';

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    Response response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
