import 'package:flutter/material.dart';
import 'package:vocabulary/styles/colors.dart';

class VocabListTile extends StatelessWidget {
  const VocabListTile(
      {Key? key,
      required this.icon,
      required this.title,
      required this.enabled,
      required this.onPressed})
      : super(key: key);

  final Icon icon;
  final String title;
  final bool enabled;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05, vertical: 0.0),
      child: ListTile(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          leading: icon,
          style: ListTileStyle.drawer,
          title: Text(
            title,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          selected: enabled,
          selectedColor: Colors.black,
          selectedTileColor: primary60,
          onTap: onPressed),
    );
  }
}
