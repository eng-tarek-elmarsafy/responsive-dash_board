import 'package:flutter/material.dart';
import 'package:responsive_adapttie/core/utils/style/app_style.dart';
import 'package:responsive_adapttie/views/widget/latest_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transaction', style: AppStyle.styleMedium16(context)),
        const SizedBox(height: 12),
        const LatestTransactionlistView(),
        const Divider(height: 48, color: Color(0xffF1F1F1)),
      ],
    );
  }
}
