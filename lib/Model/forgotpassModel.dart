class ForgotPasswordModel {
  final String? message;
  final String? error;

  ForgotPasswordModel({ this.error,this.message});

  factory ForgotPasswordModel.fromJson(Map<String, dynamic> json) {
    if(json.containsKey('error')){
      return ForgotPasswordModel(
        error: json['error'],
      );
    }
    return ForgotPasswordModel(
      message: json['message'],
    );
  }
}

class BankInfoModel {
  final String? message;
  final String? error;

  BankInfoModel({ this.error,this.message});

  factory BankInfoModel.fromJson(Map<String, dynamic> json) {
    if(json.containsKey('error')){
      return BankInfoModel(
        error: json['error'],
      );
    }
    return BankInfoModel(
      message: json['message'],
    );
  }
}


