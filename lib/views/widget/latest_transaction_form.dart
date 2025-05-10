import 'package:flutter/material.dart';
import 'package:responsive_adapttie/core/utils/style/app_style.dart';

class LatestTransactionForm extends StatelessWidget {
  const LatestTransactionForm({
    super.key,
    required this.hintText,
    required this.text,
  });
  final String hintText;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: AppStyle.styleMedium16),
        const SizedBox(height: 12),
        TextField(
          decoration: InputDecoration(
            fillColor: const Color(0xffFAFAFA),
            filled: true,
            // border: _buildBorder(),
            enabledBorder: _buildBorder(),
            focusedBorder: _buildBorder(),
            hintStyle: AppStyle.styleRegular16.copyWith(
              color: const Color(0xffaaaaaa),
            ),
            hintText: hintText,
          ),
        ),
      ],
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xfffafafa)),
    );
  }
}
