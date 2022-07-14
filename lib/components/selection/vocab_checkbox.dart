import 'package:flutter/material.dart';

class VocabCheckBox extends StatefulWidget {
  final Text title;
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
        title: widget.title,
        onChanged: (value) {
          setState(() {
            ticked = !ticked;
          });
        });
  }
}
