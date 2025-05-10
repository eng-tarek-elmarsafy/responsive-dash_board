import 'package:flutter/material.dart';
import 'package:responsive_adapttie/core/utils/style/app_images.dart';
import 'package:responsive_adapttie/views/models/user_tile_model.dart';
import 'package:responsive_adapttie/views/widget/user_info_card.dart';

class LatestTransactionlistView extends StatelessWidget {
  const LatestTransactionlistView({super.key});
  static List<UserTileModel> userList = [
    UserTileModel(
      imageSvg: Assets.kImagesAvatar1,
      titile: 'Madrani Andi',
      subtitile: 'Madraniadi20@gmail',
    ),
    UserTileModel(
      imageSvg: Assets.kImagesAvtar2,
      titile: 'Josua Nunito',
      subtitile: 'Josh Nunito@gmail.com',
    ),
    UserTileModel(
      imageSvg: Assets.kImagesAvatar1,
      titile: 'Madrani Andi',
      subtitile: 'Madraniadi20@gmail',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            userList
                .map(
                  (e) => IntrinsicWidth(child: UserInfoCard(userTileModel: e)),
                )
                .toList(),
      ),
    );
  }
}
