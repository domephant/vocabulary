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
    return LayoutBuilder(
      builder: (context, constraints) => Scaffold(
        appBar: const VocabSetupAppBar(),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "We are ready to go!",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: Theme.of(context).colorScheme.primary),
              ),
            ),
            SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 0.35,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomCenter,
                child: Lottie.asset(
                  'images/lotties/setup/lottie_setupscreen_final.json',
                  fit: BoxFit.fitWidth,
                  width: constraints.maxWidth,
                  repeat: false,
                  frameRate: FrameRate.max,
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.1),
              child: Column(
                children: [
                  SizedBox(
                    height: constraints.maxHeight * 0.4,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Text(
                      "Thank you for using Vocabulary. Now that everything is set up, you are ready to start your language journey!",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: FractionalOffset.centerRight,
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: constraints.maxHeight * 0.02,
                          horizontal: constraints.maxWidth * 0.05),
                      child: VocabFirstSetupButton(
                        title: Text("Let's Go!",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary)),
                        onPressed: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              PageTransition(
                                  child: const PageWrapper(),
                                  type: PageTransitionType.fade),
                              (Route<dynamic> route) => false);
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).colorScheme.primary),
                          foregroundColor: MaterialStateProperty.all(
                              Theme.of(context).colorScheme.onPrimary),
                        ),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );

    /*return Scaffold(
      appBar: const VocabSetupAppBar(),
      body: Align(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  "We are ready to go!",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: Theme.of(context).colorScheme.primary),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
              child: Lottie.asset(
                'images/lotties/setup/lottie_setupscreen_final.json',
                fit: BoxFit.fitWidth,
                repeat: false,
                frameRate: FrameRate.max,
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
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Theme.of(context).colorScheme.primary),
                foregroundColor: MaterialStateProperty.all(
                    Theme.of(context).colorScheme.onPrimary),
              ),
            )
          ],
        ),
      ),
    ); */
  }
}
