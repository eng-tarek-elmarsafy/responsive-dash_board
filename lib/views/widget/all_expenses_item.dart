import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adapttie/core/utils/style/app_style.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.allExpensesItemModel});
  final AllExpensesItemModel allExpensesItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(color: const Color(0xfff1f1f1), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(allExpensesItemModel.image),
              const Spacer(),
              Transform.rotate(
                angle: -pi,
                child: const Icon(Icons.arrow_back_ios_new_outlined),
              ),
            ],
          ),
          const SizedBox(height: 34),
          Text(allExpensesItemModel.title, style: AppStyle.styleSemiBold16),
          const SizedBox(height: 8),
          Text(allExpensesItemModel.date, style: AppStyle.styleRegular14),
          const SizedBox(height: 16),
          Text(allExpensesItemModel.price, style: AppStyle.styleSemiBold24),
        ],
      ),
    );
  }
}

class AllExpensesItemModel {
  AllExpensesItemModel({
    required this.image,
    required this.title,
    required this.date,
    required this.price,
  });

  final String image, title, date, price;
}
