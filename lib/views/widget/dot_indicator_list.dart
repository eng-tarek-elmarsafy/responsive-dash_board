import 'package:flutter/material.dart';
import 'package:responsive_adapttie/views/widget/dot_indicator.dart';

class DotIndicatorList extends StatelessWidget {
  const DotIndicatorList({super.key, required this.pageIndex});
  final int pageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: DotIndicator(isActev: pageIndex == index),
        ),
      ),
    );
  }
}
