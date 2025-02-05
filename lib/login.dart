import 'package:flutter/material.dart';
import 'package:wa_ui/home.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'ZEO TEX BD',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
              child: Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'ZEO TEXT BD',
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // To input Iamge from the internet letter
                    Column(
                      children: [
                        Center(
                            child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.indigo, width: 2),
                              borderRadius: BorderRadius.all(Radius.zero),
                            ),
                            hintText: 'Enter your email',
                            hintStyle: TextStyle(color: Colors.black),
                          ),
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.indigo, width: 2),
                              borderRadius: BorderRadius.all(Radius.zero),
                            ),
                            hintText: 'Enter your password',
                            hintStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Login_page(),
                              ),
                            );
                          },
                          child: const Text('Login'),
                        ),
                      ],
                    )
                    // To input Iamge from the internet letter
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
