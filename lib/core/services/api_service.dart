import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl = "https://newsapi.org/v2/";
  final String _apiKey = "apiKey=0de591d086224e878526e816a2518255";
  final Dio _dio;

  ApiService(this._dio);

  Future<Response<Map<String, dynamic>>> get(String category) async {
    Response<Map<String, dynamic>> response = await _dio.get(
      "${_baseUrl}everything?q=$category&$_apiKey",
    );
    return response;
  }
}
