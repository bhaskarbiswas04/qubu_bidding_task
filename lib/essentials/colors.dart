import 'package:flutter/material.dart';

List<Color> appColor = const [
  Color(0xFFA0E9FF),
  Color(0xFFd099f2),
  Color(0xFFc8aaf0),
  Color(0xFFedbed2),
  Color(0xFFe8edaf),
  Color(0xFFf0b4cc)
];

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
