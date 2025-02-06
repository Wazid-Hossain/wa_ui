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
  bool _rememberMe = false;
  final _formKey = GlobalKey<FormState>();

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
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Center(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          height: 550,
                          width: 400,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 5,
                                offset: const Offset(0, 5),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'ZEO TEXT BD',
                                style: TextStyle(
                                  color: Colors.cyan,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              Image(
                                  image: AssetImage('images/zeo_logo.jpg'),
                                  height: 100),
                              // To input Iamge from the internet letter
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Center(
                                      child: Form(
                                        key: _formKey,
                                        child: Column(
                                          children: [
                                            TextFormField(
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return 'Please enter your email';
                                                } else if (!value
                                                    .contains('@')) {
                                                  return 'Please enter a valid email address';
                                                }
                                                return null;
                                              },
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.indigo,
                                                      width: 2),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.zero),
                                                ),
                                                hintText: 'example@abc.com',
                                                hintStyle: TextStyle(
                                                    color: Colors.black),
                                                label: Text('Email',
                                                    style: TextStyle(
                                                      color: Colors.cyan,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    )),
                                                prefixIcon:
                                                    Icon(Icons.email_outlined),
                                              ),
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            TextFormField(
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return 'Please enter your password';
                                                } else if (value.length < 6) {
                                                  return 'Password must be at least 6 characters';
                                                }
                                                ;
                                                return null;
                                              },
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.indigo,
                                                      width: 2),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.zero),
                                                ),
                                                hintText: 'Enter your password',
                                                hintStyle: TextStyle(
                                                    color: Colors.black),
                                                label: Text(
                                                  'Password',
                                                  style: TextStyle(
                                                      color: Colors.cyan,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                prefixIcon:
                                                    Icon(Icons.lock_outline),
                                                // suffixIcon: Icon(Icons.visibility_off_outlined),
                                                // for click the eye icon to show the password we use the below code
                                                suffixIcon: IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      _obscureText =
                                                          !_obscureText;
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
                                              keyboardType:
                                                  TextInputType.visiblePassword,
                                              obscureText: true,
                                            ),
                                            // SizedBox(
                                            //   height: 10,
                                            // ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Checkbox(
                                      value: _rememberMe,
                                      onChanged: (value) {
                                        setState(() {
                                          _rememberMe = value!;
                                        });
                                        Text('Remember Me');
                                      },
                                    ),
                                    Text('Remember Me'),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  Login_page(),
                                            ),
                                          );
                                        }
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
                                            horizontal: 100, vertical: 10),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 80,
                                    ),
                                    Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            'version: 3.2',
                                            style: TextStyle(
                                              color: Colors.cyan,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        // Text(
                                        //   'version: 3.2',
                                        //   style: TextStyle(
                                        //       color: Colors.cyan,
                                        //       fontSize: 15,
                                        //       fontWeight: FontWeight.bold),
                                        // ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Text at the bottom',
                          style: TextStyle(
                            color: Colors.cyan,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
