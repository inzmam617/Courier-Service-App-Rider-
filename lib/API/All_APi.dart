import 'dart:async';
import 'dart:convert';
import '../Model/forgotpassModel.dart';
import '../Model/logoutModel.dart';
import '../Model/personavehicleModel.dart';
import '../Model/signInModel.dart';
import '../Model/signUpModel.dart';
import '../constant.dart';
import "package:http/http.dart" as http;

class ApiServiceForSignup {
  static Future<SignupResponse> signup(Map<String, dynamic> body) async {
    const String URL = "${baseUrl}signup/personal";
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

  static Future<PersonalVehicleModel> vehicleInfo(Map<String, dynamic> body, String token) async {
    const String URL = "${baseUrl}signup/vehicle";
    var imageUploadRequest = http.MultipartRequest('POST', Uri.parse(URL)) ;
    imageUploadRequest.headers["Authorization"] = token;
    imageUploadRequest.fields.addAll({
      'drivingExperience': '${body['drivingExperience']}',
      'carMake': '${body['carMake']}',
      'model': '${body['model']}',
      'year': '${body['year']}',
      'color': '${body['color']}',
      'licensePlateNumber': '${body['licensePlateNumber']}',
      'userId': '${body['userId']}',
    });
    imageUploadRequest.files.add(await http.MultipartFile.fromPath('emiratesIdFront', '${body['emiratesIdFront']}'));
    imageUploadRequest.files.add(await http.MultipartFile.fromPath('emiratesIdBack', '${body['emiratesIdBack']}'));
    http.StreamedResponse response = await imageUploadRequest.send();
    final String res=await response.stream.bytesToString();
    print(res);
    if (res != 'null') {
      try {
        final jsonData = json.decode(res) as Map<String, dynamic>;
        return PersonalVehicleModel.fromJson(jsonData);
      } catch (e) {}
    }
    return PersonalVehicleModel(message: 'An error occurred',);
  }

}

class ApiServiceForSignIn {
  static Future<SignInResponse> signin(Map<String, dynamic> body) async {
    const String URL = "${baseUrl}login";
    final response = await http.post(
        Uri.parse(URL), headers: {"Content-Type": "application/json"},
        body: json.encode(body));
    final String res = response.body;
    if (res != 'null') {
      try {
        final jsonData = json.decode(res) as Map<String, dynamic>;
        return SignInResponse.fromJson(jsonData);
      } catch (e) {}
    }
      return SignInResponse( riderId: null, token: null);

  }
    static Future<LogOutModel> logOut(String id) async {
    String URL = "${baseUrl}riderLogout$id";
    final response = await http.post(Uri.parse(URL));
    final String res = response.body;
    if (res != 'null') {
      try {
        final jsonData = json.decode(res) as Map<String, dynamic>;
        return LogOutModel.fromJson(jsonData);
      } catch (e) {}
    }
    return LogOutModel( message: null, error: null);
  }
}

class ApiServiceForForgotPassword {
  static Future<ForgotPasswordModel> sendCodeToEmail(String email) async {
    const String URL = "${baseUrl}forgot-password/email";
    final response = await http.post(Uri.parse(URL), headers: {"Content-Type": "application/json"}, body: json.encode({"email": email}));
    final String res = response.body;
    if (res != 'null') {
      final jsonData = json.decode(res) as Map<String, dynamic>;
      return ForgotPasswordModel.fromJson(jsonData);
    }
    return ForgotPasswordModel(message: 'An error occurred');
  }

  static Future<ForgotPasswordModel> verifyCode(Map<String, dynamic> body) async {
    const String URL = "${baseUrl}forgot-password/code";
    final response = await http.post(Uri.parse(URL), headers: {"Content-Type": "application/json"}, body: json.encode(body));
    final String res = response.body;
    if (res != 'null') {
      final jsonData = json.decode(res) as Map<String, dynamic>;
      return ForgotPasswordModel.fromJson(jsonData);
    }
    return ForgotPasswordModel(message: 'An error occurred');
  }

  static Future<ForgotPasswordModel> changePassword(Map<String, dynamic> body) async {
    const String URL = "${baseUrl}forgot-password/password";
    final response = await http.post(Uri.parse(URL), headers: {"Content-Type": "application/json"}, body: json.encode(body));
    final String res = response.body;
    if (res != 'null') {
      final jsonData = json.decode(res) as Map<String, dynamic>;
      return ForgotPasswordModel.fromJson(jsonData);
    }
    return ForgotPasswordModel(message: 'An error occurred');
  }
}

// class ApiServiceForPasswordVehicle {
//   static Future<PersonalVehicleModel> sendCodeToEmail(Map<String, dynamic> body) async {
//     const String URL = baseUrl + "signup/vehicle";
//     final response = await http.post(Uri.parse(URL), headers: {"Content-Type": "application/json"}, body: json.encode(body));
//     final String res = response.body;
//     if (res != 'null') {
//       final jsonData = json.decode(res) as Map<String, dynamic>;
//       return PersonalVehicleModel.fromJson(jsonData);
//     }
//     return PersonalVehicleModel(message: 'An error occurred');
//   }
//
// }




