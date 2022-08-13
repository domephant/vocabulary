import 'package:flutter/material.dart';

class VocabAddMeaningButton extends StatelessWidget {
  final VoidCallback onPressed;

  const VocabAddMeaningButton({Key? key, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: const Icon(Icons.add_circle_outline),
      label: const Text("Add Meaning"),
    );
  }
}
