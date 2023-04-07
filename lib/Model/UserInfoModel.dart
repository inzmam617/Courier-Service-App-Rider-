class UserInfo {
  final String name;
  final String email;
  final String phone;
  final String city;
  final DateTime dateOfBirth;

  UserInfo({
    required this.name,
    required this.email,
    required this.phone,
    required this.city,
    required this.dateOfBirth,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(
      name: json['message']['name'],
      email: json['message']['email'],
      phone: json['message']['phone'],
      city: json['message']['city'],
      dateOfBirth: DateTime.parse(json['message']['dateOfBirth']),
    );
  }
}
