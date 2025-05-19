import 'package:flutter/material.dart';
import 'package:responsive_adapttie/views/widget/chart.dart';
import 'package:responsive_adapttie/views/widget/chart_data_list_view.dart';
import 'package:responsive_adapttie/views/widget/detailed_chart.dart';

class ChartSectionBody extends StatelessWidget {
  const ChartSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width <= 1379 && width > 1200
        ? const Expanded(
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: DetailedChart(),
            ),
          ),
        )
        : const Row(
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
