import 'package:flutter/material.dart';
import 'package:responsive_adapttie/views/widget/all_expenes_and_quick_invoice.dart';
import 'package:responsive_adapttie/views/widget/custom_drawer.dart';

class DashBosrdLayout extends StatelessWidget {
  const DashBosrdLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 20),
        Expanded(
          flex: 2,
          child: Column(
            children: [SizedBox(height: 40), AllExpenesAndQuickInvoice()],
          ),
        ),
      ],
    );
  }
}


