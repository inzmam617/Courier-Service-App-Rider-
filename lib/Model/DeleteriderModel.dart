class DeleteRiderID {
  final String? message;
  final String? error;

  DeleteRiderID({ this.error,this.message});

  factory DeleteRiderID.fromJson(Map<String, dynamic> json) {
    if(json.containsKey('error')){
      return DeleteRiderID(
        error: json['error'],
      );
    }
    return DeleteRiderID(
      message: json['message'],
    );
  }
}