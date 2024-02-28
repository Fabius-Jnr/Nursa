class UserModel {
   String userName;
   String password;
   String uniqueId;
   String email;
   String? id;

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
