class PersonalVehicleModel {
  final String? message;
  final String? error;

  PersonalVehicleModel({ this.error,this.message});

  factory PersonalVehicleModel.fromJson(Map<String, dynamic> json) {
    if(json.containsKey('error')){
      return PersonalVehicleModel(
        error: json['error'],
      );
    }
    return PersonalVehicleModel(
      message: json['message'],
    );
  }
}


