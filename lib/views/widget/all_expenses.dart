import 'package:flutter/material.dart';
import 'package:responsive_adapttie/views/widget/item_header.dart';
import 'package:responsive_adapttie/views/widget/all_expenses_item_list_view.dart';
import 'package:responsive_adapttie/views/widget/custom_container.dart';

class AllExpenes extends StatelessWidget {
  const AllExpenes({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          SizedBox(height: 20),
          ItemHeader(title: 'All Expenes'),
          SizedBox(height: 16),
          AllExpensesItemListView(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
