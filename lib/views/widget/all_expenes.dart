import 'package:flutter/material.dart';
import 'package:responsive_adapttie/core/utils/style/app_style.dart';
import 'package:responsive_adapttie/views/widget/range_options.dart';

class AllExpenes extends StatelessWidget {
  const AllExpenes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffffffff),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
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
            ),
          ],
        ),
      ),
    );
  }
}
