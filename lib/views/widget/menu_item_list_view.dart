import 'package:flutter/material.dart';
import 'package:responsive_adapttie/views/models/menu_item_model.dart';
import 'package:responsive_adapttie/views/widget/menu_item.dart';

class MenuItemListView extends StatefulWidget {
  const MenuItemListView({super.key});

  @override
  State<MenuItemListView> createState() => _MenuItemListViewState();
}

class _MenuItemListViewState extends State<MenuItemListView> {
  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(top: 20),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder:
          (context, index) => GestureDetector(
            onTap: () {
              if (isSelected != index) {
                setState(() {
                  isSelected = index;
                });
              }
            },
            child: MenuItem(
              menuItem: menuItemes[index],
              isSelected: isSelected == index,
            ),
          ),
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
