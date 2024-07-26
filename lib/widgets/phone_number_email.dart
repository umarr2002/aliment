import 'package:aliment/variables.dart';
import 'package:aliment/widgets/gesturedetector.dart';
import 'package:flutter/material.dart';

class PhoneNumberEmail extends StatefulWidget {
  const PhoneNumberEmail({
    super.key,
    required this.onChange,
  });
  final Function onChange;

  @override
  State<PhoneNumberEmail> createState() => _PhoneNumberEmailState();
}

class _PhoneNumberEmailState extends State<PhoneNumberEmail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xffEDEDED),
      ),
      width: 356,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Gesturedetector(
            onTap: () {
              widget.onChange();
              setState(() {
                isPhone = true;
              });
            },
            check: isPhone,
            colortrue: Colors.white,
            text: "Phone Number",
            colorfalse: const Color(0xffEDEDED),
            textColor1: const Color(0xff000000),
            textColor2: const Color(0xff4F4F4F),
          ),
          Gesturedetector(
            onTap: () {
              widget.onChange();
              setState(() {
                isPhone = false;
              });
            },
            check: !isPhone,
            colortrue: Colors.white,
            text: "Email",
            colorfalse: const Color(0xffEDEDED),
            textColor1: const Color(0xff4F4F4F),
            textColor2: const Color(0xff000000),
          ),
        ],
      ),
    );
  }
}
