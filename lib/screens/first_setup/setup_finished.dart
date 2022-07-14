import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vocabulary/components/buttons/vocab_first_setup_button.dart';
import 'package:vocabulary/components/navigation/vocab_setup_appbar.dart';
import 'package:vocabulary/wrapper/page_wrapper.dart';

class VocabSetupFinishedScreen extends StatelessWidget {
  const VocabSetupFinishedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VocabSetupAppBar(),
      body: Align(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: const [
                Text("We are ready to go!"),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
              child: Lottie.asset(
                'images/lotties/setup/lottie_setupscreen_final.json',
                fit: BoxFit.fitWidth,
                repeat: false,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const Text(
                  "Thank you for using Vocabulary. Now that everything is set up, you are ready to start your language journey!"),
            ),
            VocabFirstSetupButton(
              title: const Text("Let's Go"),
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    PageTransition(
                        child: const PageWrapper(),
                        type: PageTransitionType.fade),
                    (Route<dynamic> route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
