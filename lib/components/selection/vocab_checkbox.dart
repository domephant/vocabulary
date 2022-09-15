import 'package:flutter/material.dart';

class VocabCheckBox extends StatefulWidget {
  final String title;
  final VoidCallback update;
  final bool ticked;
  const VocabCheckBox(
      {Key? key,
      required this.title,
      required this.update,
      this.ticked = false})
      : super(key: key);

  @override
  State<VocabCheckBox> createState() => _VocabCheckBoxState();
}

class _VocabCheckBoxState extends State<VocabCheckBox> {
  late bool ticked;
  @override
  void initState() {
    ticked = widget.ticked;
    super.initState();
  }

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
          widget.update();
        });
      },
    );
  }
}
