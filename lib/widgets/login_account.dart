import 'package:aliment/variables.dart';
import 'package:aliment/widgets/devider_widget.dart';
import 'package:aliment/widgets/otp_verification.dart';
import 'package:aliment/widgets/phone_number_email.dart';
import 'package:aliment/widgets/textfield_phone_email.dart';

import 'package:flutter/material.dart';

class LoginAccountPage extends StatefulWidget {
  const LoginAccountPage({super.key});

  @override
  State<LoginAccountPage> createState() => _LoginAccountPageState();
}

class _LoginAccountPageState extends State<LoginAccountPage> {
  String getPhone = "";
  @override
  void initState() {
    super.initState();
    phoneContoller.addListener(() {
      setState(() {
        getPhone = phoneContoller.text;
        if (getPhone.isNotEmpty) {
          isComplete = true;
        }
      });
    });
    emailController.addListener(_resetValidation);
    passwordController.addListener(_resetValidation);
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    phoneContoller.dispose();
    super.dispose();
  }

  void _resetValidation() {
    if (!validation) {
      setState(() {
        validation = true;
      });
    }
  }

  void _handleLogin() {
    final String getEmail = emailController.text;
    final String getPassword = passwordController.text;
    setState(() {
      if (getEmail != email || getPassword != password) {
        validation = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  left: 27,
                  top: 45,
                ),
                child: Row(
                  children: [
                    Text(
                      "Login Account",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 27),
                child: Row(
                  children: [
                    Text(
                      "Hello, welcome back to our account",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 65,
              ),
              //Class chaqirilayabdi
              PhoneNumberEmail(
                onChange: () {
                  setState(() {});
                },
              ),
              const SizedBox(
                height: 85.5,
              ),
              //Class chaqirilayabdi
              TextFieldPhoneEmail(
                isPhone: isPhone,
                phoneContoller: phoneContoller,
              ),
              const SizedBox(
                height: 60,
              ),
              //Class chaqirilayabdi

              GestureDetector(
                onTap: () {
                  setState(() {
                    if (!isPhone) {
                      _handleLogin();
                    }

                    if (getPhone.isNotEmpty && isPhone) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OtpVerification(),
                        ),
                      );
                    } else {
                      isComplete = false;
                    }
                  });
                },
                child: Opacity(
                  opacity: 0.70,
                  child: Container(
                    width: 356,
                    height: 57,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: const LinearGradient(
                            colors: [Color(0xffFF9B63), Color(0xffFF621F)])),
                    child: Center(
                        child: isPhone
                            ? const Text(
                                "Requst OPT",
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontWeight: FontWeight.w600),
                              )
                            : const Text(
                                "Login",
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontWeight: FontWeight.w600),
                              )),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              //class chaqirilayabdi
              const DeviderWidget(),
              const SizedBox(height: 60.75),
              SizedBox(
                width: 356,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Image.asset(
                        "assets/images/google_icon.png",
                        width: 22.5,
                        height: 22.5,
                      ),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    const Text(
                      "Login with Google",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 39.75,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 27),
                child: Row(
                  children: [
                    Text(
                      "Not Registered yet?",
                      style: TextStyle(
                          color: Color(0xff979797),
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Create an Account",
                      style: TextStyle(
                          color: Color(0xffFF800B),
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
