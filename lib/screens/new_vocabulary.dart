import 'package:flutter/material.dart';
import 'package:vocabulary/components/display/new_vocabulary/vocab_left_aligned_text.dart';
import 'package:vocabulary/components/inputs/new_vocabulary/vocab_input_column.dart';
import 'package:vocabulary/components/buttons/new_vocabulary/vocab_language_dropdown_button.dart';
import 'package:vocabulary/components/inputs/new_vocabulary/vocab_tag_input.dart';
import 'package:vocabulary/components/navigation/vocab_appbar.dart';

class NewVocabularyScreen extends StatelessWidget {
  const NewVocabularyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _additionalInformationController = TextEditingController();

    final List<String> values = ['Test1', 'Test2', 'Test3'];

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: const VocabAppBar(
        profile: false,
        title: Text("New Vocabulary"),
        saveButton: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => SizedBox(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          child: Center(
            child: FractionallySizedBox(
              heightFactor: 1,
              widthFactor: 0.85,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    VocabLeftAlignedText(
                      text: 'Your Language',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const VocabInputColumn(),
                    VocabLeftAlignedText(
                      text: 'Other Language',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const VocabInputColumn(),
                    VocabLeftAlignedText(
                      text: 'Vocabulary Language',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: Theme.of(context).colorScheme.outline),
                        ),
                        child: VocabLanguageDropdownButton(items: values),
                      ),
                    ),
                    VocabLeftAlignedText(
                      text: 'Tags',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    VocabTagInput(),
                    VocabLeftAlignedText(
                      text: 'Additional Information',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    TextField(
                      controller: _additionalInformationController,
                      decoration: InputDecoration(
                        focusColor: Theme.of(context).colorScheme.onSurface,
                        fillColor: Theme.of(context).colorScheme.onSurface,
                        border: const UnderlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
