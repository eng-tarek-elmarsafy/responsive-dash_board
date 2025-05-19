import 'package:flutter/material.dart';
import 'package:responsive_adapttie/core/utils/style/app_style.dart';
import 'package:responsive_adapttie/views/models/chart_data_model.dart';

class ChartData extends StatelessWidget {
  const ChartData({super.key, required this.chartDataModel});
  final ChartDataModel chartDataModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: chartDataModel.color,
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
          ),
          const SizedBox(width: 12),
          Text(chartDataModel.title, style: AppStyle.styleMedium16(context)),
          const Spacer(),
          Text(
            chartDataModel.rate,
            style: AppStyle.styleMedium16(context).copyWith(
              color: const Color(0xff208CC8),
            ),
          ),
        ],
      ),
    );
  }
}
