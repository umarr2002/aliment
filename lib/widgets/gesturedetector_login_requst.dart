import 'package:aliment/variables.dart';
import 'package:aliment/widgets/otp_verification.dart';
import 'package:flutter/material.dart';

class GesturedetectorLoginRequst extends StatelessWidget {
  const GesturedetectorLoginRequst({super.key, required this.pushandleLogin});

  final VoidCallback pushandleLogin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushandleLogin;
        if (isPhone) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OtpVerification(),
            ),
          );
        }
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
    );
  }
}
