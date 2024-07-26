import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextfieldClass extends StatefulWidget {
  int? width;
  Icon? icon;
  String hintText;
  TextEditingController? controller;
  TextfieldClass(
      {super.key,
      this.controller,
      required this.icon,
      required this.hintText,
      required this.width});

  @override
  State<TextfieldClass> createState() => _TextfieldState();
}

class _TextfieldState extends State<TextfieldClass> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        prefixIcon: Container(
            width: widget.width?.toDouble(),
            alignment: Alignment.centerLeft,
            child: widget.icon),
        hintText: widget.hintText,
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff979797))),
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
      ),
    );
  }
}
