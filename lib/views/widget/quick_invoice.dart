import 'package:flutter/material.dart';
import 'package:responsive_adapttie/views/widget/custom_container.dart';
import 'package:responsive_adapttie/views/widget/latest_transaction.dart';
import 'package:responsive_adapttie/views/widget/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [QuickInvoiceHeader(), LatestTransaction()],
      ),
    );
  }
}
