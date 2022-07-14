import 'package:flutter/material.dart';

class VocabFloatingActionButton extends StatelessWidget {
  const VocabFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(
        Icons.create,
      ),
    );
  }
}
