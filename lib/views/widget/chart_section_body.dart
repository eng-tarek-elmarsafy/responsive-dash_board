import 'package:flutter/material.dart';
import 'package:responsive_adapttie/views/widget/chart.dart';
import 'package:responsive_adapttie/views/widget/chart_data_list_view.dart';

class ChartSectionBody extends StatelessWidget {
  const ChartSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: Align(alignment: Alignment.bottomLeft, child: Chart()),
        ),
        SizedBox(width: 40),
        Expanded(flex: 3, child: ChartDataListView()),
      ],
    );
  }
}