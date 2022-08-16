import 'package:flutter/material.dart';

class VocabFirstSetupButton extends StatelessWidget {
  final Text title;
  final VoidCallback onPressed;
  final ButtonStyle style;

  const VocabFirstSetupButton(
      {Key? key,
      required this.title,
      required this.onPressed,
      required this.style})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: title,
        ),
        style: style);
  }
}
