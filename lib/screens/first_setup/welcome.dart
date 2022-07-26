import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:vocabulary/components/buttons/vocab_platform_login_button.dart';
import 'package:vocabulary/components/navigation/vocab_setup_appbar.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VocabSetupAppBar(),
      body: Align(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Welcome",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: Theme.of(context).colorScheme.secondary),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Lottie.asset(
                'images/lotties/setup/lottie_setupscreen_01.json',
                fit: BoxFit.fitWidth,
                repeat: false,
                frameRate: FrameRate.max,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 0.0,
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.025,
                        horizontal: 0.0),
                    child: const VocabPlatformButton(
                      title: Text("Sign in with Google"),
                      icon: FaIcon(FontAwesomeIcons.google),
                    ),
                  ),
                  const VocabPlatformButton(
                    title: Text("Sign in with Apple"),
                    icon: FaIcon(FontAwesomeIcons.apple),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
