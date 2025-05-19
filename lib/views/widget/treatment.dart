import 'package:flutter/material.dart';
import 'package:responsive_adapttie/core/utils/style/app_style.dart';
import 'package:responsive_adapttie/views/models/transaction_history_model.dart';

class Treatment extends StatelessWidget {
  const Treatment({super.key, required this.data});
  final TransactionHistoryModel data;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListTile(
          contentPadding: const EdgeInsets.all(0),
          title: Text(data.title, style: AppStyle.styleSemiBold16(context)),
          subtitle: Text(
            data.date,
            style: AppStyle.styleRegular16(context).copyWith(
              color: const Color(0xffaaaaaa),
            ),
          ),
          trailing: Text(
            data.amount,
            style: AppStyle.styleSemiBold20(context).copyWith(
              color:
                  data.isWithdrawal
                      ? const Color(0xffF3735E)
                      : const Color(0xff7DD97B),
            ),
          ),
        ),
      ),
    );
  }
}
