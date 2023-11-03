class User {
  final String img;
  final String fullName;
  final String username;
  final String mobileNumber;
  final String emailAddress;
  final String password;

  User({
    required this.img,
    required this.fullName,
    required this.username,
    required this.mobileNumber,
    required this.emailAddress,
    required this.password,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      img: json['img'],
      fullName: json['full_name'],
      username: json['username'],
      mobileNumber: json['mobile_number'],
      emailAddress: json['email_address'],
      password: json['password'],
    );
  }
}
