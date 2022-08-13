import 'package:flutter/material.dart';

class VocabLeftAlignedText extends StatelessWidget {
  final TextStyle? style;
  final String text;

  const VocabLeftAlignedText({Key? key, this.style, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
