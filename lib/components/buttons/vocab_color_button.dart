import 'package:flutter/material.dart';

class VocabColorButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color? color;
  final bool selected;

  const VocabColorButton(
      {Key? key,
      required this.onPressed,
      required this.color,
      required this.selected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: SizedBox(
          height: 32,
          width: 32,
          child: Container(
            decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
                border: selected
                    ? Border.all(
                        width: 2.0,
                        color: Theme.of(context).colorScheme.onSurface)
                    : null),
          ),
        ),
      ),
    );
  }
}
