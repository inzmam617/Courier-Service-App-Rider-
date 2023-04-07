
class SignupResponse {
  final String? message;
  final String? id;
  final String? status;

  SignupResponse({ this.message, this.id, this.status});

  factory SignupResponse.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('id')) {
      return SignupResponse(
        id: json['id'],
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




