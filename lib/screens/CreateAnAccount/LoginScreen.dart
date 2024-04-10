import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4E6FF),
        body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 35),
                      child: Text(
                        'Impresario',
                        style: TextStyle(
                            fontSize: 49,
                            fontFamily: 'StyleScript',
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Text('Hello',
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.black,
                              fontFamily: 'FixelText',
                              fontWeight: FontWeight.bold)),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: Text(
                        'Enter your account',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'FixelText',
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 65, top: 65, right: 65),
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Email / User Name',
                              style: TextStyle(
                                  fontFamily: 'FixelText',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                  color: Color(0xBF000000)),
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextField(
                            controller: usernameController,
                            minLines: 1,
                            maxLines: 1,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 18),
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 2.8, horizontal: 13.0),
                              labelText: 'Enter your email',
                              suffixIcon: Icon(Icons.mail),
                              fillColor: Color(0x80FFFFFF),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide.none),
                            ),
                          ),
                          const SizedBox(height: 13),
                          const Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Password',
                              style: TextStyle(
                                  fontFamily: 'FixelText',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                  color: Color(0xBF000000)),
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextField(
                            controller: passwordController,
                            obscureText: obscurePassword,
                            maxLength: 128,
                            minLines: 1,
                            maxLines: 1,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 18),
                            decoration: InputDecoration(
                              counterText: '',
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 3.0, horizontal: 13.0),
                              labelText: 'Enter your password',
                              suffixIcon: IconButton(
                                icon: Icon(
                                  obscurePassword
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    obscurePassword = !obscurePassword;
                                  });
                                },
                              ),
                              fillColor: const Color(0x80FFFFFF),
                              filled: true,
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.topRight,
                            child: TextButton(
                              onPressed: null,
                              child: Text(
                                'Forgot Password',
                                style: TextStyle(
                                    fontFamily: 'FixelText',
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15.0,
                                    color: Color(0xBF000000)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: IconButton(
                              onPressed: () {
                                if (usernameController.text.isEmpty) {
                                  Fluttertoast.showToast(
                                    msg: 'Please enter your email',
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Color(0xA6FFFFFF),
                                    textColor: Colors.black,
                                    fontSize: 16.0,
                                  );
                                } else if (passwordController.text.isEmpty) {
                                  Fluttertoast.showToast(
                                      msg: 'Please enter your password',
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.CENTER,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Color(0xA6FFFFFF),
                                      textColor: Colors.black,
                                      fontSize: 16.0);
                                }
                                () {
                                  Navigator.pushNamed(
                                      context, '/CreateAccountScreen');
                                };
                              },
                              icon: SvgPicture.asset(
                                'assets/registrations_logins/img_btn_login.svg',
                                width: 95,
                                height: 45,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 23),
                            child: Column(
                              children: [
                                const Text(
                                  'or log in with',
                                  style: TextStyle(color: Color(0x80000000)),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                        'assets/registrations_logins/img_google.svg',
                                        width: 41,
                                        height: 41,
                                      ),
                                    ),
                                    const SizedBox(width: 1),
                                    IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                        'assets/registrations_logins/img_telegram.svg',
                                        width: 41,
                                        height: 41,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                const Text(
                                  'New user?',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                                IconButton(
                                  onPressed: () => Navigator.pushNamed(
                                      context, '/RegistrationScreen'),
                                  icon: SvgPicture.asset(
                                    'assets/registrations_logins/img_btn_create_account.svg',
                                    width: 100,
                                    height: 47,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
