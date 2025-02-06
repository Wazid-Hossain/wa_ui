import 'package:flutter/material.dart';

class text_bottum extends StatefulWidget {
  const text_bottum({super.key});

  @override
  State<text_bottum> createState() => _text_bottumState();
}

class _text_bottumState extends State<text_bottum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            // Your main content here
            child: Center(
              child: Text('Main Content'),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Text at the bottom',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
