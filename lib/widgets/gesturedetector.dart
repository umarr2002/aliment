import 'package:flutter/material.dart';

class Gesturedetector extends StatelessWidget {
  final bool check;
  final Color colortrue;
  final Color textColor1;
  final Color textColor2;
  final Color? colorfalse;
  final String? text;
  final Function onTap;

  Gesturedetector({
    super.key,
    required this.check,
    required this.colortrue,
    required this.text,
    required this.colorfalse,
    required this.textColor1,
    required this.textColor2,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: 170,
        height: 40,
        decoration: BoxDecoration(
          color: check ? colortrue : colorfalse,
          borderRadius: BorderRadius.circular(15),
          boxShadow: check
              ? [
                  BoxShadow(
                      color: colortrue.withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 7,
                      offset: const Offset(0, 1)),
                ]
              : [],
        ),
        child: Center(
          child: Text(
            text ?? "",
            style: TextStyle(
                color: check ? textColor1 : textColor2,
                fontWeight: check ? FontWeight.w600 : null,
                fontSize: 14),
          ),
        ),
      ),
    );
  }
}
