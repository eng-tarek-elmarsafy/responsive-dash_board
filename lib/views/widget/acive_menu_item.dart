import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adapttie/core/utils/style/app_style.dart';
import 'package:responsive_adapttie/views/models/menu_item_model.dart';

class AciveMenuItem extends StatelessWidget {
  const AciveMenuItem({super.key, required this.menuItem});

  final MenuItemModel menuItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(menuItem.iconSvg),
      title: Text(menuItem.nameAction, style: AppStyle.styleBold16),
      trailing: Container(width: 3.27, color: const Color(0xff4eb7f2)),
    );
  }
}
