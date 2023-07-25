class UserModel {
  final String userName;
  final String password;
  final String uniqueId;
  final String email;
  final String? id;

  UserModel(
      {required this.userName,
      required this.password,
      required this.uniqueId,
      required this.email,
      this.id});

  toJson() {
    return {
      "userName": userName,
      "password": password,
      "uniqueId": uniqueId,
      "email": email,
    };
  }
}
