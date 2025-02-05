import 'package:flutter/material.dart';
import 'package:wa_ui/home.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  bool _obscureText = true;
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'ZEO TEXT BD',
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
                              hintText: 'example@abc.com',
                              hintStyle: TextStyle(color: Colors.black),
                              label: Text('Email'),
                              prefixIcon: Icon(Icons.email_outlined),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        SizedBox(
                          height: 20,
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
                            label: Text('Password'),
                            prefixIcon: Icon(Icons.lock_outline),
                            // suffixIcon: Icon(Icons.visibility_off_outlined),
                            // for click the eye icon to show the password we use the below code
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              icon: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                            //or if we want to click the eye icon or any other icon we use gesture detector or inkwell
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                        ),
                        SizedBox(
                          height: 40,
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
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.cyanAccent,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 150, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
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
