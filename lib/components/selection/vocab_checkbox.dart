import 'package:flutter/material.dart';

class VocabCheckBox extends StatefulWidget {
  final String title;
  const VocabCheckBox({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<VocabCheckBox> createState() => _VocabCheckBoxState();
}

class _VocabCheckBoxState extends State<VocabCheckBox> {
  bool ticked = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      value: ticked,
      title: Text(
        widget.title,
        style: Theme.of(context).textTheme.labelLarge!.copyWith(
            color: ticked
                ? Theme.of(context).colorScheme.tertiary
                : Theme.of(context).colorScheme.onBackground),
      ),
      activeColor: Theme.of(context).colorScheme.tertiary,
      checkboxShape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      onChanged: (value) {
        setState(() {
          ticked = !ticked;
        });
      },
    );
  }
}
