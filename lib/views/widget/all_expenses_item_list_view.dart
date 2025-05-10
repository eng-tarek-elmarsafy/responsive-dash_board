import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_adapttie/core/utils/style/app_images.dart';
import 'package:responsive_adapttie/views/models/all_expenses_item_model.dart';
import 'package:responsive_adapttie/views/widget/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final List<AllExpensesItemModel> expensesItem = const [
    AllExpensesItemModel(
      image: Assets.kImagesMoneys,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.kImagesBalance,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.kImagesCardSend,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];

  int carentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          expensesItem.asMap().entries.map((e) {
            int index = e.key;
            var item = e.value;
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  log(index.toString());

                  setState(() {
                    carentIndex = index;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.only(
                    right: index == expensesItem.length - 1 ? 0 : 16,
                  ),
                  child:
                      carentIndex == index
                          ? ActivAllExpensesItem(allExpensesItemModel: item)
                          : InActivAllExpensesItem(allExpensesItemModel: item),
                ),
              ),
            );
          }).toList(),
    );
  }
}
