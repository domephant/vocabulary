import 'package:flutter/material.dart';
import 'package:vocabulary/components/dialogs/dialog_frame.dart';
import 'package:vocabulary/components/dialogs/edit_tags.dart';
import 'package:vocabulary/models/enums/languages.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool appSoundEffectsValue = true;
  Languages? _languages = Languages.german;
  List<String> languages = [
    "German",
    "English",
    "Giraffe",
    "French",
    "Chinese",
    "Japanese",
    "Korean",
    "Dansk",
    "Latin",
    "Spanish"
  ];
  List<Languages> languagesEnum = [
    Languages.german,
    Languages.english,
    Languages.giraffe,
    Languages.french,
    Languages.chineseSimplified,
    Languages.japanese,
    Languages.korean,
    Languages.danish,
    Languages.latin,
    Languages.spanish
  ];
  List<bool?> languagesLearning = List.filled(10, true);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(thickness: 1),
        ListTile(
          onTap: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return StatefulBuilder(builder: (context, setState) {
                    return DialogFrame(
                      title: const Text("Main Language"),
                      child: Scrollbar(
                        thickness: 5.0,
                        child: ListView.builder(
                          itemCount: languages.length,
                          itemBuilder: (context, index) {
                            return RadioListTile<Languages>(
                              title: Text(languages[index]),
                              value: languagesEnum[index],
                              groupValue: _languages,
                              onChanged: (Languages? value) {
                                setState(() {
                                  _languages = value;
                                });
                              },
                            );
                          },
                        ),
                      ),
                    );
                  });
                });
          },
          title: const Text("Main language"),
          subtitle: const Text("Your main language is set to German."),
        ),
        const Divider(thickness: 1),
        ListTile(
          title: const Text("Learning Languages"),
          subtitle: const Text("Chinese, Tagalog, English, Latin"),
          onTap: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return StatefulBuilder(builder: (context, setState) {
                    return DialogFrame(
                      title: const Text("Learning Languages"),
                      child: Scrollbar(
                        thickness: 5.0,
                        child: ListView.builder(
                          itemCount: languages.length,
                          itemBuilder: (context, index) {
                            return CheckboxListTile(
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                title: Text(languages[index]),
                                value: languagesLearning[index],
                                onChanged: (bool? value) {
                                  languagesLearning[index] = value;
                                });
                          },
                        ),
                      ),
                    );
                  });
                });
          },
        ),
        const Divider(thickness: 1),
        SwitchListTile(
          onChanged: (value) {
            setState(() {
              appSoundEffectsValue = value;
            });
          },
          title: const Text("App sound effects"),
          subtitle: const Text("You love them or you hate them"),
          value: appSoundEffectsValue,
        ),
        const Divider(thickness: 1),
        const Text("Your tags"),
        TextButton(
            onPressed: () {
              showDialog(context: context, builder: (_) => EditTagsDialog());
            },
            child: Text("Test"))
      ],
    );
  }
}
