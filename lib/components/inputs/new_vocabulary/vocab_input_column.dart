import 'package:flutter/material.dart';
import 'package:vocabulary/components/buttons/new_vocabulary/vocab_add_meaning_button.dart';
import 'package:vocabulary/components/inputs/new_vocabulary/vocab_text_field.dart';

class VocabInputColumn extends StatefulWidget {
  const VocabInputColumn({Key? key}) : super(key: key);

  @override
  State<VocabInputColumn> createState() => _VocabInputColumnState();
}

class _VocabInputColumnState extends State<VocabInputColumn> {
  void removeTextFieldWithIndex(int index) {
    setState(() {
      yourLanguageInputs.removeAt(index);
    });
  }

  void addTextFieldWithIndex() {
    print("test");
    setState(() {
      yourLanguageInputs.add(
        VocabTextField(
          controller: TextEditingController(),
          index: yourLanguageInputs.length,
          onIconPressed: () {},
        ),
      );
    });
  }

  final List<VocabTextField> yourLanguageInputs = [
    VocabTextField(
      controller: TextEditingController(),
      index: 0,
      onIconPressed: () {},
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (VocabTextField field in yourLanguageInputs)
          VocabTextField(
              controller: field.controller,
              index: field.index,
              onIconPressed: () => removeTextFieldWithIndex(field.index)),
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 16.0),
          child:
              VocabAddMeaningButton(onPressed: () => addTextFieldWithIndex()),
        ),
      ],
    );
  }
}
