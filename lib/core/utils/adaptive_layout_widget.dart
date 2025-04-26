import 'package:flutter/material.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  final WidgetBuilder mobilLayout, tabletLayout, desktopLayout;
  const AdaptiveLayoutWidget({
    super.key,
    required this.mobilLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobilLayout(context);
        } else if (constraints.maxWidth < 900) {
          return tabletLayout(context);
        }
        return desktopLayout(context);
      },
    );
  }
}
