import 'package:flutter/material.dart';
import 'package:responsive_adapttie/core/utils/widget/adaptive_layout_widget.dart';
import 'package:responsive_adapttie/views/widget/dashboard_layout.dart';
import 'package:responsive_adapttie/views/widget/mobil_layout.dart';
import 'package:responsive_adapttie/views/widget/tablet_layout.dart';

class ResponsiveDashBoardView extends StatelessWidget {
  const ResponsiveDashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayoutWidget(
        mobilLayout: (context) => const MobilLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DashBosrdLayout(),
      ),
    );
  }
}
