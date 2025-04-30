import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adapttie/views/models/menu_item_model.dart';

class MenuItem extends StatelessWidget {
  final MenuItemModel menuItem;
  const MenuItem({super.key, required this.menuItem});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(menuItem.iconSvg),
      title: Text(menuItem.nameAction),
    );
  }
}