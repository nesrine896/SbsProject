// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/user.dart';
import '../models/api_response.dart';
import '../models/api_errors.dart';

class AuthController {
  final String _baseUrl = "http://localhost:3000/";

  Future<ApiResponse> Login(String username, String password) async {
    ApiResponse _apiResponse = new ApiResponse();

    var url = Uri.parse(_baseUrl + "auth/login");
    print(username);
    print(password);
    try {
      final response = await http.post(url, body: {
        'nom': "nesrine",
        'email': '$username',
        'password': '$password',
      });

      switch (response.statusCode) {
        case 200:
          _apiResponse.Data = User.fromJson(json.decode(response.body));
          break;
        case 401:
          _apiResponse.ApiError = ApiError.fromJson(json.decode(response.body));
          break;
        default:
          _apiResponse.ApiError = ApiError.fromJson(json.decode(response.body));
          break;
      }
    } catch (error) {
      _apiResponse.ApiError = ApiError(error: "Server error. Please retry");
    }
    return _apiResponse;
  }

  Future<ApiResponse> Signin(String name, String email, String password,
      String phone, String post, DateTime brithday, String image) async {
    ApiResponse _apiResponse = new ApiResponse();

    var url = Uri.parse(_baseUrl + "auth/register");

    try {
      final response = await http.post(url, body: {
        'nom': '$name',
        'email': '$email',
        'password': '$password',
        'post': '$post',
        'brithday': '$brithday',
        'imageProfil': '$image',
        'phone': '$phone',
      });

      switch (response.statusCode) {
        case 200:
          _apiResponse.Data = User.fromJson(json.decode(response.body));
          break;
        case 401:
          _apiResponse.ApiError = ApiError.fromJson(json.decode(response.body));
          break;
        default:
          _apiResponse.ApiError = ApiError.fromJson(json.decode(response.body));
          break;
      }
    } catch (error) {
      _apiResponse.ApiError = ApiError(error: "Server error. Please retry");
    }
    return _apiResponse;
  }
}
