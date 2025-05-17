import 'package:flutter/material.dart';
import 'package:responsive_adapttie/views/widget/all_expenes_and_quick_invoice.dart';
import 'package:responsive_adapttie/views/widget/chart_section.dart';
import 'package:responsive_adapttie/views/widget/custom_drawer.dart';
import 'package:responsive_adapttie/views/widget/my_card_section.dart';

class DashBosrdLayout extends StatelessWidget {
  const DashBosrdLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 3, child: CustomDrawer()),
        SizedBox(width: 20),
        Expanded(
          flex: 10,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: AllExpenesAndQuickInvoice(),
                      ),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      flex: 4,
                      child: Column(
                        children: [
                          MyCardSection(),
                          SizedBox(height: 24),
                          Expanded(child: ChartSection()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}
