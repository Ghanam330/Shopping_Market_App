class UserModel {
  String userId, email, name, pic;

  UserModel({this.userId, this.email, this.name, this.pic});

  UserModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    userId = map['userId'];
    name = map['name'];
    email = map['email'];
    pic = map['pic'];
  }

  toJson() {
    return {
      'userId': userId,
      'name': name,
      'email': email,
      'pic': pic,
    };
  }
}
