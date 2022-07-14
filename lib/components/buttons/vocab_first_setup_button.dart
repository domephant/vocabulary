import 'package:flutter/material.dart';

class VocabFirstSetupButton extends StatelessWidget {
  final Text title;
  final VoidCallback onPressed;

  const VocabFirstSetupButton(
      {Key? key, required this.title, required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: title,
    );
  }
}
