import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adapttie/core/utils/style/app_images.dart';
import 'package:responsive_adapttie/core/utils/style/app_style.dart';

class CardPymint extends StatelessWidget {
  const CardPymint({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff4EB7F2),
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: AssetImage(Assets.kImagesCardPymint),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  'Name card',
                  style: AppStyle.styleRegular16(
                    context,
                  ).copyWith(color: const Color(0xffffffff)),
                ),
                subtitle: Text(
                  'Syah Bandi',
                  style: AppStyle.styleMedium20(
                    context,
                  ).copyWith(color: const Color(0xffffffff)),
                ),
                trailing: SvgPicture.asset(Assets.kImagesGallery),
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyle.styleSemiBold24(
                      context,
                    ).copyWith(color: const Color(0xffffffff)),
                  ),
                  Text(
                    '12/20-124',
                    style: AppStyle.styleRegular16(
                      context,
                    ).copyWith(color: const Color(0xffffffff)),
                  ),
                ],
              ),
              const Flexible(child: SizedBox(height: 27)),
            ],
          ),
        ),
      ),
    );
  }
}
