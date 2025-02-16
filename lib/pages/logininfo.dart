import 'package:flutter/material.dart';
import 'package:wa_ui/models/model.dart'; // Import your LoginModel and User classes

class Home_page extends StatelessWidget {
  final LoginModel loginModel; // Accept the API response

  const Home_page({super.key, required this.loginModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome, ${loginModel.user?.name ?? "User"}!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text('User Details:'),
            Text('ID: ${loginModel.user?.id ?? "N/A"}'),
            Text('Name: ${loginModel.user?.name ?? "N/A"}'),
            Text('Email: ${loginModel.user?.email ?? "N/A"}'),
            Text('Mobile: ${loginModel.user?.mobile ?? "N/A"}'),
            Text('Role: ${loginModel.user?.role ?? "N/A"}'),
            Text('Status: ${loginModel.user?.status ?? "N/A"}'),
          ],
        ),
      ),
    );
  }
}
