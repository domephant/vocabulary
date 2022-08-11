import 'package:flutter/material.dart';
import 'package:vocabulary/components/buttons/vocab_color_button.dart';
import 'package:vocabulary/styles/custom_color.g.dart';

class ColorSelectionRow extends StatefulWidget {
  const ColorSelectionRow({
    Key? key,
  }) : super(key: key);

  @override
  State<ColorSelectionRow> createState() => _ColorSelectionRowState();
}

class _ColorSelectionRowState extends State<ColorSelectionRow> {
  int index = 0;

  void onColorTap(int a) {
    setState(() {
      index = a;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        VocabColorButton(
          onPressed: () => onColorTap(0),
          color: CustomYellow,
          selected: index == 0,
        ),
        VocabColorButton(
          onPressed: () => onColorTap(1),
          color: CustomOrange,
          selected: index == 1,
        ),
        VocabColorButton(
          onPressed: () => onColorTap(2),
          color: CustomRed,
          selected: index == 2,
        ),
        VocabColorButton(
          onPressed: () => onColorTap(3),
          color: CustomPurple,
          selected: index == 3,
        ),
        VocabColorButton(
          onPressed: () => onColorTap(4),
          color: CustomBlue,
          selected: index == 4,
        ),
        VocabColorButton(
          onPressed: () => onColorTap(5),
          color: CustomGreen,
          selected: index == 5,
        )
      ],
    );
  }
}
