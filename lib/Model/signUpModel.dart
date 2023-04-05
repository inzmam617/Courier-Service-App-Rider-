import 'dart:convert';
import 'package:http/http.dart' as http;

class SignupResponse {
  final String message;
  final String? id;
  final String? status;

  SignupResponse({required this.message, this.id, this.status});

  factory SignupResponse.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('id')) {
      return SignupResponse(
        message: json['message'],
        id: json['id'],
        status: json['status'],
      );
    } else {
      return SignupResponse(
        message: json['message'],
        id: null,
        status: null,
      );
    }
  }
}




