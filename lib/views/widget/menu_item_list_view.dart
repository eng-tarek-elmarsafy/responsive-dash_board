import 'package:flutter/material.dart';
import 'package:responsive_adapttie/views/models/menu_item_model.dart';
import 'package:responsive_adapttie/views/widget/menu_item.dart';

class MenuItemListView extends StatelessWidget {
  const MenuItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(top: 20),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => MenuItem(menuItem: menuItemes[index]),
      separatorBuilder: (context, index) {
        if (index == 4) {
          return SizedBox(height: 360);
        }
        return SizedBox(height: 20);
      },
      itemCount: menuItemes.length,
    );
  }
}
