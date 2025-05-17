import 'package:flutter/material.dart';
import 'package:responsive_adapttie/views/models/chart_data_model.dart';
import 'package:responsive_adapttie/views/widget/chart_data.dart';

class ChartDataListView extends StatelessWidget {
  const ChartDataListView({super.key});
  static List<ChartDataModel> dataList = [
    ChartDataModel(
      color: const Color(0xff208CC8),
      title: 'Design service',
      rate: '40%',
    ),
    ChartDataModel(
      color: const Color(0xff4EB7F2),
      title: 'Design product',
      rate: '25%',
    ),
    ChartDataModel(
      color: const Color(0xff064061),
      title: 'Product royalti',
      rate: '20%',
    ),
    ChartDataModel(color: const Color(0xffE2DECD), title: 'Other', rate: '20%'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: dataList.map((e) => ChartData(chartDataModel: e)).toList(),
    );
  }
}
