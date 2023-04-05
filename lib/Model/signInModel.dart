import 'dart:convert';
import 'package:http/http.dart' as http;

class SignInResponse {
  final String? riderId;
  final String? token;

  SignInResponse({ this.riderId, this.token});

  factory SignInResponse.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('riderId')) {
      return SignInResponse(
        riderId: json['riderId'],
        token: json['token'],
      );
    } else {
      return SignInResponse(
        riderId: null,
        token: null,
      );
    }
  }
}




