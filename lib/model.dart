class LoginModel {
  bool? status;
  String? message;
  String? token;
  User? user;

  LoginModel({this.status, this.message, this.token, this.user});

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    token = json['token'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['token'] = this.token;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? code;
  String? name;
  String? mobile;
  String? email;
  String? role;
  String? status;
  Null? imageUrl;

  User(
      {this.id,
      this.code,
      this.name,
      this.mobile,
      this.email,
      this.role,
      this.status,
      this.imageUrl});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    name = json['name'];
    mobile = json['mobile'];
    email = json['email'];
    role = json['role'];
    status = json['status'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['code'] = this.code;
    data['name'] = this.name;
    data['mobile'] = this.mobile;
    data['email'] = this.email;
    data['role'] = this.role;
    data['status'] = this.status;
    data['image_url'] = this.imageUrl;
    return data;
  }
}
