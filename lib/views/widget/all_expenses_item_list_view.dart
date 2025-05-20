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
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                carentIndex = 0;
              });
            },
            child:
                carentIndex == 0
                    ? ActivAllExpensesItem(
                      allExpensesItemModel: expensesItem[0],
                    )
                    : InActivAllExpensesItem(
                      allExpensesItemModel: expensesItem[0],
                    ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                carentIndex = 1;
              });
            },
            child:
                carentIndex == 1
                    ? ActivAllExpensesItem(
                      allExpensesItemModel: expensesItem[1],
                    )
                    : InActivAllExpensesItem(
                      allExpensesItemModel: expensesItem[1],
                    ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                carentIndex = 2;
              });
            },
            child:
                carentIndex == 2
                    ? ActivAllExpensesItem(
                      allExpensesItemModel: expensesItem[2],
                    )
                    : InActivAllExpensesItem(
                      allExpensesItemModel: expensesItem[2],
                    ),
          ),
        ),
      ],
    );
  }
}
