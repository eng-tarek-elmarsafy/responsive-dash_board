import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adapttie/views/widget/card_pymint.dart';

class CardPymintList extends StatelessWidget {
  const CardPymintList({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: controller,
      children: List.generate(
        3,
        (index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 3),
          child: CardPymint(),
        ),
      ),
    );
  }
}
