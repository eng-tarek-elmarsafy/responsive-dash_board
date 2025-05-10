import 'package:flutter/material.dart';
import 'package:responsive_adapttie/core/utils/style/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.textColor,
    this.backgroundColor,
  });
  final String text;
  final Color? textColor, backgroundColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: _elevatedButton(),
        onPressed: () {
        },
        child: Text(
          text,
          style: AppStyle.styleSemiBold16.copyWith(
            color: textColor,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  ButtonStyle _elevatedButton() {
    return ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    );
  }
}
