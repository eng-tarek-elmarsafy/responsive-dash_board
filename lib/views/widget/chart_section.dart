import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_adapttie/views/widget/chart_section_body.dart';
import 'package:responsive_adapttie/views/widget/custom_container.dart';
import 'package:responsive_adapttie/views/widget/item_header.dart';

class ChartSection extends StatelessWidget {
  const ChartSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    log(width.toString());
    return const CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          ItemHeader(title: 'Income'),
          SizedBox(height: 16),
          Expanded(child: ChartSectionBody()),
        ],
      ),
    );
  }
}
