
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key});

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool obscurePassword = true;
  bool isChecked = false;
  bool isButtonEnabled = false;

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
                      child: Text('Let\'s get started',
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.black,
                              fontFamily: 'FixelText',
                              fontWeight: FontWeight.bold)),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: Text(
                        'Simple and fast registration',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'FixelText',
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 65, top: 25, right: 65),
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Email',
                              style: TextStyle(
                                  fontFamily: 'FixelText',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                  color: Color(0xBF000000)),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const TextField(
                            minLines: 1,
                            maxLines: 1,
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            decoration: InputDecoration(
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
                          const SizedBox(height: 13),
                          const Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Repeat Password',
                              style: TextStyle(
                                  fontFamily: 'FixelText',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                  color: Color(0xBF000000)),
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextField(
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
                              labelText: 'Repeat your password',
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: TextButton(
                                  onPressed: () => Navigator.pushNamed(
                                      context, '/PrivacyAndTermsConditions'),
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero),
                                  child: const Text(
                                    'Privacy and Terms & Conditions',
                                    style: TextStyle(
                                      fontFamily: 'FixelText',
                                      fontWeight: FontWeight.normal,
                                      decoration: TextDecoration.underline,
                                      fontSize: 14.5,
                                      color: Color(0xBF000000),
                                    ),
                                  ),
                                ),
                              ),
                              Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value ?? false;
                                    isButtonEnabled = isChecked;
                                  });
                                },
                                activeColor: const Color(0xFFF9F0FF),
                                checkColor: Colors.black,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: IconButton(
                              onPressed: isButtonEnabled
                                  ? () {
                                      Navigator.pushNamed(
                                          context, '/CreateAccountScreen');
                                    }
                                  : () {},
                              icon: SvgPicture.asset(
                                'assets/registrations_logins/img_btn_next.svg',
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
                                IconButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  icon: SvgPicture.asset(
                                    'assets/registrations_logins/img_btn_back.svg',
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
