import 'dart:async';
import 'dart:convert';
import 'package:delivery_customer_side/Model/RiderWalletModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Model/DeleteriderModel.dart';
import '../Model/TransactionModel.dart';
import '../Model/UserInfoModel.dart';
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
    print(res);
    if (res != 'null') {
      try {
        final jsonData = json.decode(res) as Map<String, dynamic>;
        return SignupResponse.fromJson(jsonData);
      } catch (e) {}
    }
    return SignupResponse(message: 'An error occurred', id: null, status: null);
  }

  static Future<BankInfoModel> bank(Map<String, dynamic> body) async {
    const String URL = "${baseUrl}signup/bank";
    final response = await http.post(Uri.parse(URL),headers: {"Content-Type": "application/json"}, body: json.encode(body));
    final String res = response.body;
    if (res != 'null') {
      try {
        final jsonData = json.decode(res) as Map<String, dynamic>;
        return BankInfoModel.fromJson(jsonData);
      } catch (e) {}
    }
    return BankInfoModel(message: 'An error occurred');
  }
  static Future<DeleteRiderID> deleteId() async {
    final prefs = await SharedPreferences.getInstance();
    String id=prefs.getString('riderId').toString();
    String token=prefs.getString('token').toString();
    String URL = "${baseUrl}deleteProfile/${id}";
    final response = await http.delete(Uri.parse(URL),headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    final String res = response.body;
    if (res != 'null') {
      try {
        print(res);
        await prefs.remove('riderId');
        await prefs.remove('token');
        final jsonData = json.decode(res) as Map<String, dynamic>;
        return DeleteRiderID.fromJson(jsonData);
      } catch (e) {}
    }
    return DeleteRiderID(message: 'An error occurred');
  }

  static Future<PersonalVehicleModel> vehicleInfo(Map<String, dynamic> body) async {
    const String URL = "${baseUrl}signup/vehicle";
    var imageUploadRequest = http.MultipartRequest('POST', Uri.parse(URL)) ;
    imageUploadRequest.fields.addAll({
      'drivingExperience': '${int.tryParse(body['drivingExperience'] ?? '') ?? 0}',
      'carMake': '${body['carMake']}',
      'model': '${body['model']}',
      'year': '${int.tryParse(body['year'] ?? '') ?? 0}',
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
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('riderId', jsonData['riderId'].toString());
        await prefs.setString('token', jsonData['token'].toString());
        return SignInResponse.fromJson(jsonData);
      } catch (e) {}
    }
      return SignInResponse( riderId: null, token: null);

  }
    static Future<LogOutModel> logOut() async {
      final prefs = await SharedPreferences.getInstance();
      String id=prefs.getString('riderId').toString();
      String token=prefs.getString('token').toString();
    String URL = "${baseUrl}riderLogout/$id";
    final response = await http.post(Uri.parse(URL),headers: {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': 'Bearer $token',
    });
    final String res = response.body;
    if (res != 'null') {
      try {
        await prefs.remove('riderId');
        await prefs.remove('token');
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

class ApiServiceForWallet {
  static Future<RiderWalletModel> wallet() async {
    final prefs = await SharedPreferences.getInstance();
    String id=prefs.getString('riderId').toString();
    String token=prefs.getString('token').toString();
    String URL = "${baseUrl}wallet/$id";
    final response = await http.get(Uri.parse(URL),headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    final String res = response.body;
    if (res != 'null') {
      try {
        print(res);
        // await prefs.remove('riderId');
        // await prefs.remove('token');
        final jsonData = json.decode(res) as Map<String, dynamic>;
        return RiderWalletModel.fromJson(jsonData);
      } catch (e) {}
    }
    return RiderWalletModel( balance: null, );
  }
}

class ApiServiceForTransaction {
  static Future<TransactionModel> transactionHistory() async {
    final prefs = await SharedPreferences.getInstance();
    String id=prefs.getString('riderId').toString();
    String token=prefs.getString('token').toString();
    String URL = "${baseUrl}getransactions/$id";
    final response = await http.get(Uri.parse(URL),headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    final String res = response.body;
    if (res != 'null') {
      try {
        print(res);
        // await prefs.remove('riderId');
        // await prefs.remove('token');
        final jsonData = json.decode(res) as Map<String, dynamic>;
        return TransactionModel.fromJson(jsonData);
      } catch (e) {}
    }
    return TransactionModel(  );
  }
}
class ApiServiceForUserInfo {
  static Future<UserInfo> GetUserInfo() async {
    final prefs = await SharedPreferences.getInstance();
    String id=prefs.getString('riderId').toString();
    String token=prefs.getString('token').toString();
    String URL = "${baseUrl}riders/$id";
    // print('id');
    // print(id);
    // print("token");

    // print(token);
    // print("url");
    // print(URL);
    final response = await http.get(Uri.parse(URL),headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    final String res = response.body;
    if (res != 'null') {
      try {
        // print(res);
        // await prefs.remove('riderId');
        // await prefs.remove('token');
        final jsonData = json.decode(res) as Map<String, dynamic>;
        return UserInfo.fromJson(jsonData);
      } catch (e) {
        print(e.toString());
      }
    }
    return UserInfo(name: '', email: '', city: '', phone: '', dateOfBirth: ""  );
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




