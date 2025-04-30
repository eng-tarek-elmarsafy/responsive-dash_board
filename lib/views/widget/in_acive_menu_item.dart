import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adapttie/core/utils/style/app_style.dart';
import 'package:responsive_adapttie/views/models/menu_item_model.dart';

class InAciveMenuItem extends StatelessWidget {
  const InAciveMenuItem({super.key, required this.menuItem});

  final MenuItemModel menuItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(menuItem.iconSvg),
      title: Text(menuItem.nameAction, style: AppStyle.styleMedium16),
    );
  }
}
