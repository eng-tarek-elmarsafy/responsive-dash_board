import 'package:flutter/material.dart';
import 'package:responsive_adapttie/core/utils/widget/size_config.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget({
    super.key,
    required this.mobilLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });
  final WidgetBuilder mobilLayout, tabletLayout, desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < SizeConfig.taplet) {
          return mobilLayout(context);
        } else if (constraints.maxWidth < SizeConfig.desktop) {
          return tabletLayout(context);
        }
        return desktopLayout(context);
      },
    );
  }
}
