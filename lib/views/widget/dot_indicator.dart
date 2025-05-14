import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, required this.isActev});
  final bool isActev;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isActev ? 32 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActev ? const Color(0xff4EB7F2) : const Color(0xffE8E8E8),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      duration: const Duration(milliseconds: 300),
    );
  }
}

// class InDotIndicator extends StatelessWidget {
//   const InDotIndicator({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 32,
//       height: 8,
//       decoration: const BoxDecoration(
//         color:
//         borderRadius: BorderRadius.all(Radius.circular(12)),
//       ),
//     );
//   }
// }
