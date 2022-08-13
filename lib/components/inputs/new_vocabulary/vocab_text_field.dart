import 'package:flutter/material.dart';

class VocabTextField extends StatelessWidget {
  final TextEditingController controller;
  final int index;
  final VoidCallback? onIconPressed;

  const VocabTextField(
      {Key? key,
      required this.controller,
      required this.index,
      this.onIconPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          focusColor: Theme.of(context).colorScheme.onSurface,
          fillColor: Theme.of(context).colorScheme.onSurface,
          border: const UnderlineInputBorder(),
          suffixIcon: IconButton(
              onPressed: onIconPressed != null ? () => onIconPressed!() : null,
              icon: const Icon(Icons.remove_circle_outline))),
    );
  }
}
