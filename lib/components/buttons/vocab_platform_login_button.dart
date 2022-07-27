import 'package:flutter/material.dart';

class VocabPlatformButton extends StatelessWidget {
  final Text title;
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
        leading: icon,
        title: title,
      ),
    );
  }
}
