import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model.dart';

class Apiservices {
  Future<LoginModel?> loginwithmodel(String email, String password) async {
    try {
      var url = Uri.parse("https://reqres.in/api/login");
      var respone =
          await http.post(url, body: {"email": email, "password": password});

      if (respone.statusCode == 200) {
        LoginModel model = LoginModel.fromJson(jsonDecode(respone.body));
        return model;
      }
    } catch (e) {
      print(e);
    }
  }
}
