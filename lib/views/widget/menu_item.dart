import 'package:flutter/material.dart';
import 'package:responsive_adapttie/views/models/menu_item_model.dart';
import 'package:responsive_adapttie/views/widget/acive_menu_item.dart';
import 'package:responsive_adapttie/views/widget/in_acive_menu_item.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key, required this.menuItem, required this.isSelected});
  final bool isSelected;
  final MenuItemModel menuItem;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? AciveMenuItem(menuItem: menuItem)
        : InAciveMenuItem(menuItem: menuItem);
  }
}
