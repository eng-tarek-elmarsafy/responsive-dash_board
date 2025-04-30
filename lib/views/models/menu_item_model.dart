import 'package:responsive_adapttie/core/utils/style/app_images.dart';

class MenuItemModel {
  final String iconSvg;
  final String nameAction;

  MenuItemModel({required this.iconSvg, required this.nameAction});
}

final List<MenuItemModel> menuItemes = [
  MenuItemModel(iconSvg: Assets.kImagesDashboard, nameAction: 'Dashboard'),
  MenuItemModel(
    iconSvg: Assets.kImagesMyTransaction,
    nameAction: 'My Transaction',
  ),
  MenuItemModel(iconSvg: Assets.kImagesStatistics, nameAction: 'Statistics'),
  MenuItemModel(iconSvg: Assets.kImagesWallet2, nameAction: 'Wallet Account'),
  MenuItemModel(
    iconSvg: Assets.kImagesMyInvestments,
    nameAction: 'My Investments',
  ),
  // MenuItemModel(iconSvg: Assets.kImagesSetting, nameAction: 'Setting system'),
  // MenuItemModel(iconSvg: Assets.kImagesLogout, nameAction: 'Logout account'),
];
