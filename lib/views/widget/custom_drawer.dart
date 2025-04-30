import 'package:flutter/material.dart';
import 'package:responsive_adapttie/core/utils/style/app_images.dart';
import 'package:responsive_adapttie/views/models/user_tile_model.dart';
import 'package:responsive_adapttie/views/widget/menu_item_list_view.dart';
import 'package:responsive_adapttie/views/widget/user_info_card.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserInfoCard(
          userTileModel: UserTileModel(
            imageSvg: Assets.kImagesAvatar1,
            titile: 'Lekan Okeowo',
            subtitile: 'demo@gmail.com',
          ),
        ),
        const MenuItemListView(),
      ],
    );
  }
}
