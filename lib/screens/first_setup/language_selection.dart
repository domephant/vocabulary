import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vocabulary/components/buttons/vocab_first_setup_button.dart';
import 'package:vocabulary/components/navigation/vocab_setup_appbar.dart';
import 'package:vocabulary/components/selection/vocab_checkbox.dart';
import 'package:vocabulary/screens/first_setup/setup_finished.dart';

class LanguageSelectionScreen extends StatelessWidget {
  const LanguageSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VocabSetupAppBar(),
      body: Align(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(children: const [
              Text("Select your languages"),
              Text("Don't worry. You can change it later."),
            ]),
            Lottie.asset('images/lotties/setup/lottie_setupscreen_02.json',
                fit: BoxFit.fitWidth,
                repeat: false,
                alignment: Alignment.centerRight,
                height: MediaQuery.of(context).size.height * 0.25),
            Column(
              children: const [
                VocabCheckBox(
                  title: Text("German"),
                ),
                VocabCheckBox(
                  title: Text("English"),
                ),
                VocabCheckBox(
                  title: Text("French"),
                ),
                VocabCheckBox(
                  title: Text("Japanese"),
                ),
                VocabCheckBox(
                  title: Text("Korean"),
                ),
                VocabCheckBox(
                  title: Text("Giraffe"),
                ),
              ],
            ),
            VocabFirstSetupButton(
                title: const Text("Next"),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        child: const VocabSetupFinishedScreen(),
                        type: PageTransitionType.rightToLeftWithFade,
                        duration: const Duration(milliseconds: 250)),
                  );
                })
          ],
        ),
      ),
    );
  }
}
