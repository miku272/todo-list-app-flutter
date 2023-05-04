import 'package:flutter/material.dart';

class TopCornerDesign extends StatelessWidget {
  const TopCornerDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/dashboard_top_design.png',
      fit: BoxFit.cover,
      width: 300,
    );
  }
}
