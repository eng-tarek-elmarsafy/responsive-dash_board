import 'package:flutter/material.dart';
import 'package:responsive_adapttie/views/responsive_dash_board_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: ResponsiveDashBoardView(),
    );
  }
}
