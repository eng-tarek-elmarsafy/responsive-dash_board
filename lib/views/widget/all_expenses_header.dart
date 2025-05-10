import 'package:flutter/material.dart';
import 'package:responsive_adapttie/core/utils/style/app_style.dart';
import 'package:responsive_adapttie/views/widget/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('All Expenes', style: AppStyle.styleSemiBold20),
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
