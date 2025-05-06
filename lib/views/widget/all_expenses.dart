import 'package:flutter/material.dart';
import 'package:responsive_adapttie/core/utils/style/app_images.dart';
import 'package:responsive_adapttie/views/widget/all_expenses_item.dart';
import 'package:responsive_adapttie/views/widget/all_expenses_widget.dart';

class AllExpenes extends StatelessWidget {
  const AllExpenes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        children: [
          const AllExpensesWidget(),
          const SizedBox(height: 16),
          AllExpensesItem(
            allExpensesItemModel: AllExpensesItemModel(
              image: Assets.kImagesBalance,
              title: 'Income',
              date: 'April 2022',
              price: r'$20,129',
            ),
          ),
        ],
      ),
    );
  }
}
