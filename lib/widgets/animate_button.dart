import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AnimatedButtonPage extends StatefulWidget {
  String? text;
  Color? textColor;
  Color? backgroundColor;

  AnimatedButtonPage(
      {super.key,
      required this.text,
      required this.backgroundColor,
      required this.textColor});

  @override
  AnimatedButtonPageState createState() => AnimatedButtonPageState();
}

class AnimatedButtonPageState extends State<AnimatedButtonPage> {
  bool _isPressed = false;

  void _togglePress() {
    setState(() {
      _isPressed = !_isPressed;
    });
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        _isPressed = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        _togglePress();
        await Future.delayed(const Duration(milliseconds: 300));

        // ignore: use_build_context_synchronously
        Navigator.pushNamed(context, "/login_account");
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: _isPressed
              ? const Color.fromARGB(255, 199, 195, 195)
              : widget.backgroundColor,
        ),
        height: _isPressed ? 50 : 50,
        width: 356,
        child: Center(
          child: Text(
            widget.text ?? '',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: widget.textColor),
          ),
        ),
      ),
    );
  }
}
