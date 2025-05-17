import 'package:flutter/material.dart';

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
        if (constraints.maxWidth < 800) {
          return mobilLayout(context);
        } else if (constraints.maxWidth < 1200) {
          return tabletLayout(context);
        }
        return desktopLayout(context);
      },
    );
  }
}
