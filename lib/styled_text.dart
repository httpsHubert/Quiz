import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, this.textSize, this.color, {super.key});

  final String text;
  final double textSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: textSize,
      ),
    );
  }
}
