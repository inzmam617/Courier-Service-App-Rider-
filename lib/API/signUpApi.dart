import 'dart:async';
import 'dart:convert';
import '../Model/signInModel.dart';
import '../Model/signUpModel.dart';
import '../constant.dart';
import "package:http/http.dart" as http;

class ApiServiceForSignup {
  static Future<SignupResponse> signup(Map<String, dynamic> body) async {
    const String URL = baseUrl + "signup/personal";
    final response = await http.post(Uri.parse(URL),headers: {"Content-Type": "application/json"}, body: json.encode(body));
    final String res = response.body;
    if (res != 'null') {
      try {
        final jsonData = json.decode(res) as Map<String, dynamic>;
        return SignupResponse.fromJson(jsonData);
      } catch (e) {}
    }
    return SignupResponse(message: 'An error occurred', id: null, status: null);
  }
}

class ApiServiceForSignIn {
  static Future<SignInResponse> signin(Map<String, dynamic> body) async {
    const String URL = baseUrl + "login";
    final response = await http.post(Uri.parse(URL),headers: {"Content-Type": "application/json"}, body: json.encode(body));
    final String res = response.body;
    if (res != 'null') {
      try {
        final jsonData = json.decode(res) as Map<String, dynamic>;
        if (jsonData.containsKey('riderId')) {
          return SignInResponse.fromJson(jsonData);
        } else {
          return SignInResponse(riderId: null, token: null);
        }
      } catch (e) {}
    }
    return SignInResponse( riderId: null, token: null);
  }
}




