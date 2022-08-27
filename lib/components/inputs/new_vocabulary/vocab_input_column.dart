import 'package:flutter/material.dart';
import 'package:vocabulary/components/buttons/new_vocabulary/vocab_add_meaning_button.dart';
import 'package:vocabulary/components/inputs/new_vocabulary/vocab_text_field.dart';

class VocabInputColumn extends StatefulWidget {
  const VocabInputColumn({Key? key}) : super(key: key);

  @override
  State<VocabInputColumn> createState() => _VocabInputColumnState();
}

class _VocabInputColumnState extends State<VocabInputColumn> {
  int index = 1;
  late final List<VocabTextField> yourLanguageInputs;

  void removeTextFieldWithIndex(TextEditingController con) {
    setState(
      () {
        yourLanguageInputs.removeWhere((element) => element.controller == con);
      },
    );
  }

  void addTextFieldWithIndex() {
    setState(
      () {
        TextEditingController controller = TextEditingController();
        yourLanguageInputs.add(
          VocabTextField(
            controller: controller,
            onIconPressed: () => removeTextFieldWithIndex(controller),
            onSubmit: () => addTextFieldWithIndex(),
            focus: FocusNode(),
          ),
        );
      },
    );
    index++;
    yourLanguageInputs[yourLanguageInputs.length - 1].focus.requestFocus();
  }

  @override
  void initState() {
    TextEditingController controller = TextEditingController();
    yourLanguageInputs = [
      VocabTextField(
        controller: controller,
        onIconPressed: () => removeTextFieldWithIndex(controller),
        onSubmit: () => addTextFieldWithIndex(),
        focus: FocusNode(),
      )
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (VocabTextField field in yourLanguageInputs) field,
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 16.0),
          child:
              VocabAddMeaningButton(onPressed: () => addTextFieldWithIndex()),
        ),
      ],
    );
  }
}
