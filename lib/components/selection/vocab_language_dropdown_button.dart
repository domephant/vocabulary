import 'package:flutter/material.dart';

class VocabLanguageDropdownButton extends StatefulWidget {
  final List<String> items;

  const VocabLanguageDropdownButton({Key? key, required this.items})
      : super(key: key);

  @override
  State<VocabLanguageDropdownButton> createState() =>
      _VocabLanguageDropdownButtonState();
}

class _VocabLanguageDropdownButtonState
    extends State<VocabLanguageDropdownButton> {
  late String dropdownValue = widget.items[0];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      borderRadius: BorderRadius.circular(15),
      underline: Container(),
      value: dropdownValue,
      isExpanded: true,
      items: widget.items
          .map((String value) => DropdownMenuItem(
                child: Text(value),
                value: value,
              ))
          .toList(),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
    );
  }
}
