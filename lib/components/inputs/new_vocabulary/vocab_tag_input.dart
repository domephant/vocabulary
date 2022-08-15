import 'package:flutter/material.dart';

class VocabTagInput extends StatefulWidget {
  const VocabTagInput({Key? key}) : super(key: key);

  @override
  State<VocabTagInput> createState() => _VocabTagInputState();
}

class _VocabTagInputState extends State<VocabTagInput> {
  final _tagController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32.0),
      child: TextField(
        controller: _tagController,
        style: Theme.of(context).textTheme.bodyLarge,
        decoration: InputDecoration(
          focusColor: Theme.of(context).colorScheme.onSurface,
          fillColor: Theme.of(context).colorScheme.onSurface,
          border: const UnderlineInputBorder(),
        ),
      ),
    );
  }
}
