import 'package:flutter/material.dart';
import 'package:responsive_adapttie/views/widget/all_expenes_and_quick_invoice.dart';
import 'package:responsive_adapttie/views/widget/custom_drawer.dart';
import 'package:responsive_adapttie/views/widget/my_card_section.dart';

class DashBosrdLayout extends StatelessWidget {
  const DashBosrdLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 20),
        Expanded(flex: 2, child: AllExpenesAndQuickInvoice()),
        SizedBox(width: 24),
        Expanded(child: MyCardSection()),
        SizedBox(width: 32),
      ],
    );
  }
}


