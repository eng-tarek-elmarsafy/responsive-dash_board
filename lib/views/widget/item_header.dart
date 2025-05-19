// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:responsive_adapttie/core/utils/style/app_style.dart';
import 'package:responsive_adapttie/views/widget/range_options.dart';

class ItemHeader extends StatelessWidget {
  const ItemHeader({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: AppStyle.styleSemiBold20(context)),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xfff1f1f1)),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: const RangeOptions(),
        ),
      ],
    );
  }
}
