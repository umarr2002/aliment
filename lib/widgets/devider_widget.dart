import 'package:flutter/material.dart';

class DeviderWidget extends StatelessWidget {
  const DeviderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: Color(0xffB6B6B6),
            thickness: 1.0,
            indent: 20.0,
            endIndent: 20.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 9.75),
          child: Text(
            'OR',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: Color(0xffB6B6B6),
            thickness: 1.0,
            indent: 20.0,
            endIndent: 20.0,
          ),
        ),
      ],
    );
  }
}
