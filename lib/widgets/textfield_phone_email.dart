import 'package:aliment/variables.dart';
import 'package:aliment/widgets/textfield.dart';
import 'package:flutter/material.dart';

class TextFieldPhoneEmail extends StatefulWidget {
  TextFieldPhoneEmail(
      {super.key, required this.isPhone, required this.phoneContoller});
  final bool isPhone;
  final TextEditingController phoneContoller;

  @override
  State<TextFieldPhoneEmail> createState() => _TextFieldPhoneEmailState();
}

class _TextFieldPhoneEmailState extends State<TextFieldPhoneEmail> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 356,
      child: widget.isPhone
          ? Column(
              children: [
                TextfieldClass(
                  icon: const Icon(
                    Icons.phone,
                  ),
                  hintText: "Phone number",
                  width: 65,
                  controller: widget.phoneContoller,
                ),
                SizedBox(
                  height: 30,
                  child: isComplete
                      ? const Text("")
                      : const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "Complete the text field!",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.w600),
                          ),
                        ),
                )
              ],
            )
          : Form(
              child: Column(
                children: [
                  TextfieldClass(
                    icon: const Icon(
                      Icons.alternate_email,
                    ),
                    hintText: "Email ID",
                    width: 65,
                    controller: emailController,
                  ),
                  const SizedBox(
                    height: 35.25,
                  ),
                  TextfieldClass(
                    icon: const Icon(
                      Icons.lock,
                    ),
                    hintText: "Password",
                    width: 65,
                    controller: passwordController,
                  ),
                  SizedBox(
                    height: 30,
                    child: validation
                        ? const Text("")
                        : const Text(
                            "Invalid Username or Password. Try Again!",
                            style: TextStyle(
                                color: Color(0xffD70000),
                                fontWeight: FontWeight.w600,
                                fontSize: 12),
                          ),
                  )
                ],
              ),
            ),
    );
  }
}
