import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vocabulary/components/display/new_vocabulary/vocab_chip.dart';
import 'package:vocabulary/models/vocab_tag.dart';
import 'package:vocabulary/services/authentication_service.dart';
import 'package:vocabulary/services/database_service.dart';

class VocabTagInput extends StatefulWidget {
  const VocabTagInput({Key? key}) : super(key: key);

  @override
  State<VocabTagInput> createState() => _VocabTagInputState();
}

class _VocabTagInputState extends State<VocabTagInput> {
  List<VocabChip> tagChips = [];
  List<VocabTag> autocompleteTags = [];
  FocusNode focusNode = FocusNode();
  final textFieldController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    var databaseData =
        await Provider.of<DatabaseService>(context, listen: false)
            .getAllUserTags(context.read<AuthenticationService>());
    setState(() {
      autocompleteTags = databaseData.docs
          .map(
            (e) => VocabTag(
              name: e.get('name').toString(),
              color: e.get('color').toString(),
            ),
          )
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Padding(
        padding: const EdgeInsets.only(bottom: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Scrollbar(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: tagChips,
                ),
              ),
            ),
            RawAutocomplete<VocabTag>(
              focusNode: focusNode,
              textEditingController: textFieldController,
              optionsBuilder: (textEditingValue) {
                if (textEditingValue.text.isEmpty) {
                  return List.empty();
                }
                List<VocabTag> values = autocompleteTags
                    .where(
                      (element) => element.name.toLowerCase().startsWith(
                            textEditingValue.text.toLowerCase(),
                          ),
                    )
                    .toList();
                values.retainWhere((element) {
                  for (var chip in tagChips) {
                    if (chip.title == element.name) return false;
                  }
                  return true;
                });
                if (values.isNotEmpty) {
                  return values;
                } else {
                  for (var chip in tagChips) {
                    if (chip.title == textEditingValue.text) {
                      return List.empty();
                    }
                  }
                  return List.filled(
                      1,
                      VocabTag(
                          name:
                              "${textEditingValue.text} (neues Tag erstellen)",
                          color: "#ffffff"));
                }
              },
              optionsViewBuilder: (context, onSelected, options) => Material(
                child: SizedBox(
                  width: constraints.maxWidth,
                  child: ListView.builder(
                    itemCount: options.length,
                    itemBuilder: (context, index) => ListTile(
                      title: Text(
                        options.elementAt(index).name,
                      ),
                      onTap: () => onSelected(options.elementAt(index)),
                    ),
                  ),
                ),
              ),
              onSelected: (option) {
                setState(
                  () {
                    int index = tagChips.length;
                    tagChips.add(
                      VocabChip(
                        title: option.name,
                        index: index,
                        onDeleted: () {
                          setState(() {
                            tagChips.removeWhere(
                                (element) => element.index == index);
                          });
                        },
                      ),
                    );
                    textFieldController.text = "";
                  },
                );
              },
              fieldViewBuilder: (context, textEditingController, focusNode,
                      onFieldSubmitted) =>
                  TextField(
                controller: textEditingController,
                style: Theme.of(context).textTheme.bodyLarge,
                decoration: InputDecoration(
                  focusColor: Theme.of(context).colorScheme.onSurface,
                  fillColor: Theme.of(context).colorScheme.onSurface,
                  border: const UnderlineInputBorder(),
                ),
                focusNode: focusNode,
                onSubmitted: (value) => setState(
                  () {
                    int index = tagChips.length;
                    tagChips.add(
                      VocabChip(
                        title: value,
                        index: index,
                        onDeleted: () {
                          setState(() {
                            tagChips.removeWhere(
                                (element) => element.index == index);
                          });
                        },
                      ),
                    );
                    focusNode.requestFocus();
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
