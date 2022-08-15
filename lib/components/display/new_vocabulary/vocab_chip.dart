import 'package:flutter/material.dart';

class VocabChip extends StatelessWidget {
  final String? title;
  final Color? backgroundColor;
  const VocabChip({Key? key, this.title, this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        title ?? "",
        style: Theme.of(context).textTheme.labelLarge,
      ),
      deleteIcon: const Icon(
        Icons.close,
        size: 20,
      ),
      backgroundColor: backgroundColor,
      onDeleted: () {},
    );
  }
}
