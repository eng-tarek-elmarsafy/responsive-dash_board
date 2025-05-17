import 'package:flutter/material.dart';
import 'package:responsive_adapttie/views/widget/custom_drawer.dart';
import 'package:responsive_adapttie/views/widget/mobil_layout.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: MobilLayout(),
          ),
        ),

        SizedBox(width: 32),
      ],
    );
  }
}
