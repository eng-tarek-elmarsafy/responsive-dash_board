import 'package:flutter/material.dart';
import 'package:responsive_adapttie/views/widget/card_pymint_list.dart';
import 'package:responsive_adapttie/views/widget/dot_indicator_list.dart';
import 'package:responsive_adapttie/views/widget/my_card_text.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController controller;
  int carentpage = 0;

  @override
  void initState() {
    controller = PageController();
    controller.addListener(() {
      carentpage = controller.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40),
        const MyCardText(),
        CardPymintList(controller: controller),
        const SizedBox(height: 19),
        DotIndicatorList(pageIndex: carentpage),
        const SizedBox(height: 40),
      ],
    );
  }
}
