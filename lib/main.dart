import 'package:flutter/material.dart';
import 'package:wa_ui/home.dart';
import 'package:wa_ui/login.dart';
import 'package:wa_ui/modern_login.dart';
import 'package:wa_ui/sing_up.dart';
import 'package:wa_ui/text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZEO TEX BD',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}
