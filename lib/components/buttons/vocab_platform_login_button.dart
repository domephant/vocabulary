import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vocabulary/screens/first_setup/language_selection.dart';

class VocabPlatformButton extends StatelessWidget {
  final Text title;
  final Widget icon;
  const VocabPlatformButton({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.push(
          context,
          PageTransition(
              child: const LanguageSelectionScreen(),
              type: PageTransitionType.rightToLeftWithFade,
              duration: const Duration(milliseconds: 200)),
        );
      },
      child: ListTile(
        leading: icon,
        title: title,
      ),
    );
  }
}
