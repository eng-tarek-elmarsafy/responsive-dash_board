import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adapttie/core/utils/style/app_style.dart';

class DetailedChart extends StatefulWidget {
  const DetailedChart({super.key});

  @override
  State<DetailedChart> createState() => _DetailedChartState();
}

class _DetailedChartState extends State<DetailedChart> {
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
              radius: activeIndex == 0 ? 45 : 40,
              title: activeIndex == 0 ? 'Design service' : '40%',
              titleStyle:
                  activeIndex == 0
                      ? AppStyle.styleBold16(
                        context,
                      ).copyWith(color: Colors.black)
                      : AppStyle.styleBold16(
                        context,
                      ).copyWith(color: Colors.white),
              titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
              value: 40,
              color: const Color(0xff208CC8),
            ),
            PieChartSectionData(
              radius: activeIndex == 1 ? 45 : 40,
              title: activeIndex == 1 ? 'Design product' : '25%',
              titlePositionPercentageOffset: activeIndex == 1 ? 2.4 : null,
              titleStyle:
                  activeIndex == 1
                      ? AppStyle.styleBold16(
                        context,
                      ).copyWith(color: Colors.black)
                      : AppStyle.styleBold16(
                        context,
                      ).copyWith(color: Colors.white),
              value: 25,
              color: const Color(0xff4EB7F2),
            ),
            PieChartSectionData(
              radius: activeIndex == 2 ? 45 : 40,
              title: activeIndex == 2 ? 'Product royalti' : '20%',
              titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null,
              titleStyle:
                  activeIndex == 2
                      ? AppStyle.styleBold16(
                        context,
                      ).copyWith(color: Colors.black)
                      : AppStyle.styleBold16(
                        context,
                      ).copyWith(color: Colors.white),
              value: 20,
              color: const Color(0xff064061),
            ),
            PieChartSectionData(
              radius: activeIndex == 3 ? 45 : 40,
              title: activeIndex == 3 ? 'Other' : '22%',
              titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
              titleStyle:
                  activeIndex == 3
                      ? AppStyle.styleBold16(
                        context,
                      ).copyWith(color: Colors.black)
                      : AppStyle.styleBold16(
                        context,
                      ).copyWith(color: Colors.white),
              value: 22,
              color: const Color(0xffE2DECD),
            ),
          ],
        ),
      ),
    );
  }
}
