import 'package:flutter/material.dart';
import 'package:responsive_adapttie/views/models/transaction_history_model.dart';
import 'package:responsive_adapttie/views/widget/treatment.dart';

class TreatmentListView extends StatelessWidget {
  const TreatmentListView({super.key});
  static List<TransactionHistoryModel> dataList = [
    TransactionHistoryModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      isWithdrawal: true,
    ),
    TransactionHistoryModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM ',
      amount: r'$20,129',
      isWithdrawal: false,
    ),
    TransactionHistoryModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM ',
      amount: r'$20,129',
      isWithdrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(children: dataList.map((e) => Treatment(data: e)).toList());

    // ListView.builder(
    //   shrinkWrap: true,
    //   physics: const NeverScrollableScrollPhysics(),
    //   itemCount: dataList.length,
    //   itemBuilder: (context, index) => Treatment(data: dataList[index]),
    // );
  }
}
