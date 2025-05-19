import 'package:flutter/material.dart';
import 'package:responsive_adapttie/core/utils/widget/adaptive_layout_widget.dart';
import 'package:responsive_adapttie/views/widget/custom_drawer.dart';
import 'package:responsive_adapttie/views/widget/dashboard_layout.dart';
import 'package:responsive_adapttie/views/widget/mobil_layout.dart';
import 'package:responsive_adapttie/core/utils/widget/size_config.dart';
import 'package:responsive_adapttie/views/widget/tablet_layout.dart';

class ResponsiveDashBoardView extends StatefulWidget {
  const ResponsiveDashBoardView({super.key});

  @override
  State<ResponsiveDashBoardView> createState() =>
      _ResponsiveDashBoardViewState();
}

class _ResponsiveDashBoardViewState extends State<ResponsiveDashBoardView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar:
          MediaQuery.sizeOf(context).width < SizeConfig.taplet
              ? AppBar(
                backgroundColor: const Color(0xff208CC8),
                leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              )
              : null,
      drawer:
          MediaQuery.sizeOf(context).width < SizeConfig.taplet
              ? const Drawer(child: CustomDrawer())
              : null,
      backgroundColor: const Color.fromARGB(255, 247, 249, 250),
      body: AdaptiveLayoutWidget(
        mobilLayout: (context) => const MobilLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DashBosrdLayout(),
      ),
    );
  }
}
