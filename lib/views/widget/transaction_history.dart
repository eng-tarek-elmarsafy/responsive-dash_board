import 'package:flutter/material.dart';
import 'package:responsive_adapttie/core/utils/style/app_style.dart';
import 'package:responsive_adapttie/views/widget/transaction_history_haeder.dart';
import 'package:responsive_adapttie/views/widget/treatment_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHaeder(),
        const SizedBox(height: 20),
        Text(
          '13 April 2022',
          style: AppStyle.styleMedium16(context).copyWith(
            color: const Color(0xffaaaaaa),
          ),
        ),
        const SizedBox(height: 16),
        const TreatmentListView(),
        const SizedBox(height: 24),
      ],
    );
  }
}
