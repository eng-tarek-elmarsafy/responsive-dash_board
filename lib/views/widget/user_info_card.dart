import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adapttie/core/utils/style/app_style.dart';
import 'package:responsive_adapttie/views/models/user_tile_model.dart';

class UserInfoCard extends StatelessWidget {
  final UserTileModel userTileModel;
  const UserInfoCard({super.key, required this.userTileModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        elevation: 0,
        color: Color(0xfffafafa),
        child: ListTile(
          leading: SvgPicture.asset(userTileModel.imageSvg),
          title: Text(
            userTileModel.titile,
            style: AppStyle.styleSemiBold16.copyWith(color: Color(0xff064061)),
          ),
          subtitle: Text(
            userTileModel.subtitile,
            style: AppStyle.styleRegular12,
          ),
        ),
      ),
    );
  }
}
