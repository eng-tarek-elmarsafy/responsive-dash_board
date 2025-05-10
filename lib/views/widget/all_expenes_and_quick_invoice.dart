import 'package:flutter/material.dart';
import 'package:responsive_adapttie/views/widget/all_expenses.dart';
import 'package:responsive_adapttie/views/widget/quick_invoice.dart';

class AllExpenesAndQuickInvoice extends StatelessWidget {
  const AllExpenesAndQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      //AllExpenesQuickInvoice
      children: [AllExpenes(), SizedBox(height: 24), QuickInvoice()],
    );
  }
}