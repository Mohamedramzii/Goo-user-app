import 'dart:convert';

class User_Model {
  String? username;
  String? email;
  String? phone_number;
  String? password;
  User_Model({
    this.username,
    this.email,
    this.phone_number,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'email': email,
      'phone_number': phone_number,
      'password': password,
    };
  }

  factory User_Model.fromMap(Map<String, dynamic> map) {
    return User_Model(
      username: map['username'],
      email: map['email'],
      phone_number: map['phone_number'],
      password: map['password'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User_Model.fromJson(String source) => User_Model.fromMap(json.decode(source));
}
