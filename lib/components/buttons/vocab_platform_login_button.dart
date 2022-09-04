import 'package:flutter/material.dart';

class VocabPlatformButton extends StatelessWidget {
  final String title;
  final Widget icon;
  final VoidCallback onPressed;
  const VocabPlatformButton(
      {Key? key,
      required this.title,
      required this.icon,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: ListTile(
        dense: true,
        leading: icon,
        title: Text(
          title,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
    );
  }
}
