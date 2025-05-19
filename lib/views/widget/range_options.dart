import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_adapttie/core/utils/style/app_style.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text('Monthly', style: AppStyle.styleMedium16(context)),
        const SizedBox(width: 18),
        Transform.rotate(
          angle: -pi / 2,
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xff064060),
          ),
        ),
      ],
    );
  }
}