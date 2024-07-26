import 'package:flutter/material.dart';

class AppColors {
  static const Color color1 = Color(0xFFA0E9FF);
  static const Color color2 = Color(0xFFd099f2);
  static const Color color3 = Color(0xFFc8aaf0);
  static const Color color4 = Color(0xFFedbed2);
  static const Color color5 = Color(0xFFe8edaf);
  static const Color color6 = Color(0xFFf0b4cc);
}

class ColorContainer extends StatelessWidget {
  const ColorContainer({
    super.key,
    required this.setColor,
  });

  final Color setColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.0,
      height: 45.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: setColor,
      ),
    );
  }
}
