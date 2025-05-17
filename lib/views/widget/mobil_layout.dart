import 'package:flutter/material.dart';
import 'package:responsive_adapttie/views/widget/all_expenes_and_quick_invoice.dart';
import 'package:responsive_adapttie/views/widget/chart_section.dart';
import 'package:responsive_adapttie/views/widget/my_card_section.dart';

class MobilLayout extends StatelessWidget {
  const MobilLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: AllExpenesAndQuickInvoice()),
        SliverToBoxAdapter(child: MyCardSection()),
        SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverToBoxAdapter(child: ChartSection()),
      ],
    );
  }
}
