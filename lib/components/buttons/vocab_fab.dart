import 'package:flutter/material.dart';
import 'package:vocabulary/screens/new_vocabulary.dart';

class VocabFloatingActionButton extends StatelessWidget {
  const VocabFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (_) => const NewVocabularyScreen()));
      },
      child: const Icon(
        Icons.create,
      ),
    );
  }
}
