class RiderWalletModel {
  final int? balance;
  // final String? error;

  RiderWalletModel({ this.balance});

  factory RiderWalletModel.fromJson(Map<String, dynamic> json) {
    // if(json.containsKey('error')){
    //   return RiderWalletModel(
    //     error: json['error'],
    //   );
    // }
    return RiderWalletModel(
      balance: json['balance'],
    );
  }
}
