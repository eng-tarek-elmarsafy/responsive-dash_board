import 'package:flutter/material.dart';

class MyCardText extends StatelessWidget {
  const MyCardText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 24, bottom: 20),
      child: Text(
        'My card',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Color(0xff064061),
        ),
      ),
    );
  }
}