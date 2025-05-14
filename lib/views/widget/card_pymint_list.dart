import 'package:flutter/material.dart';
import 'package:responsive_adapttie/views/widget/card_pymint.dart';

class CardPymintList extends StatelessWidget {
  const CardPymintList({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView(
        controller: controller,
        children: List.generate(3, (index) => const CardPymint()),
      ),
    );
  }
}
