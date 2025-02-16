import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:wa_ui/models/model.dart';

class ApiServices {
  Future<LoginModel?> loginwithmodel(String email, String password) async {
    try {
      final url =
          Uri.parse("https://zeotexbd.com/api/login"); // Add your API URL here
      final response =
          await http.post(url, body: {"email": email, "password": password});

      if (response.statusCode == 200) {
        LoginModel model = LoginModel.fromJson(jsonDecode(response.body));
        return model;
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
