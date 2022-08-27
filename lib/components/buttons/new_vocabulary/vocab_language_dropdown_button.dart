import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vocabulary/services/authentication_service.dart';
import 'package:vocabulary/services/database_service.dart';

class VocabLanguageDropdownButton extends StatefulWidget {
  const VocabLanguageDropdownButton({Key? key}) : super(key: key);

  @override
  State<VocabLanguageDropdownButton> createState() =>
      _VocabLanguageDropdownButtonState();
}

class _VocabLanguageDropdownButtonState
    extends State<VocabLanguageDropdownButton> {
  var dropdownValue;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: Provider.of<DatabaseService>(context, listen: false)
          .getAllMotherTongues(context.read<AuthenticationService>()),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<String> languages =
              snapshot.data!.docs.map((e) => e.get('name').toString()).toList();

          return DropdownButtonHideUnderline(
            child: ButtonTheme(
              alignedDropdown: true,
              child: DropdownButton(
                hint: const Text('Select a language'),
                borderRadius: BorderRadius.circular(8),
                value: dropdownValue,
                style: Theme.of(context).textTheme.bodyLarge,
                isExpanded: true,
                items: languages
                    .map((String value) => DropdownMenuItem(
                          child: Text(value),
                          value: value,
                        ))
                    .toList(),
                onChanged: (Object? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
              ),
            ),
          );
        } else {
          String dropdownValue = 'No Data Found';
          DropdownButtonHideUnderline(
            child: ButtonTheme(
              alignedDropdown: true,
              child: DropdownButton(
                borderRadius: BorderRadius.circular(8),
                value: dropdownValue,
                style: Theme.of(context).textTheme.bodyLarge,
                isExpanded: true,
                items: const [
                  DropdownMenuItem(
                    child: Text('No Data Found'),
                    value: 'No Data Found',
                  ),
                ].toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
              ),
            ),
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
