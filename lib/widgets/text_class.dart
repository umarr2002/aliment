import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextClass extends StatefulWidget {
  String? text;
  TextStyle? style;
  double? size;
  Color? color;
  FontWeight? weight;

  TextClass(
      {super.key, this.color, this.size, this.style, this.text, this.weight});

  @override
  State<TextClass> createState() => _TextClassState();
}

class _TextClassState extends State<TextClass> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text ?? "",
      style: TextStyle(
          color: widget.color,
          fontSize: widget.size,
          fontWeight: widget.weight),
    );
  }
}
