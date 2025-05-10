import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adapttie/core/utils/style/app_images.dart';
import 'package:responsive_adapttie/core/utils/style/app_style.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Quick Invoice', style: AppStyle.styleSemiBold20),
        const Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: const BoxDecoration(
            color: Color(0xfffafafa),

            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(Assets.kImagesAdd, width: 18),
        ),
      ],
    );
  }
}
