import 'package:flutter/material.dart';
import 'package:responsive_adapttie/views/widget/custom_container.dart';
import 'package:responsive_adapttie/views/widget/my_card.dart';
import 'package:responsive_adapttie/views/widget/transaction_history.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 40),
        CustomContainer(
          child: Column(
            children: [
              MyCard(),
              Divider(color: Color(0xffF1F1F1), height: 40),
              TransactionHistory(),
            ],
          ),
        ),
      ],
    );
  }
}
