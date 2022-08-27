import 'package:flutter/material.dart';

class VocabTextField extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback? onIconPressed;
  final VoidCallback? onSubmit;
  final FocusNode focus;

  const VocabTextField(
      {Key? key,
      required this.controller,
      required this.focus,
      this.onIconPressed,
      this.onSubmit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: Theme.of(context).textTheme.bodyLarge,
      onSubmitted: onSubmit != null ? (value) => onSubmit!() : null,
      focusNode: focus,
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
