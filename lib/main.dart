import 'package:flutter/material.dart';
import 'package:wa_ui/pages/HomeScreen/MainHome.dart';
import 'package:wa_ui/pages/calender.dart';
import 'package:wa_ui/pages/login.dart';

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
      home: MainHome(),
    );
  }
}
