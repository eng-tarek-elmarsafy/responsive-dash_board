import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          sectionsSpace: 0,
          pieTouchData: PieTouchData(
            enabled: true,
            touchCallback: (p0, pieTouchResponse) {
              activeIndex =
                  pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
              setState(() {});
            },
          ),
          sections: [
            PieChartSectionData(
              radius: activeIndex == 0 ? 30 : 25,
              showTitle: false,
              value: 40,
              color: const Color(0xff208CC8),
            ),
            PieChartSectionData(
              radius: activeIndex == 1 ? 30 : 25,
              showTitle: false,
              value: 25,
              color: const Color(0xff4EB7F2),
            ),
            PieChartSectionData(
              radius: activeIndex == 2 ? 30 : 25,
              showTitle: false,
              value: 20,
              color: const Color(0xff064061),
            ),
            PieChartSectionData(
              radius: activeIndex == 3 ? 30 : 25,
              showTitle: false,
              value: 22,
              color: const Color(0xffE2DECD),
            ),
          ],
        ),
      ),
    );
  }
}
