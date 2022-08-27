import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:vocabulary/components/buttons/vocab_platform_login_button.dart';
import 'package:vocabulary/components/navigation/vocab_setup_appbar.dart';
import 'package:vocabulary/screens/first_setup/language_selection.dart';
import 'package:vocabulary/services/authentication_service.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  late AnimationController _lottieAnimationController;

  @override
  void initState() {
    super.initState();
    _lottieAnimationController = AnimationController(vsync: this);
  }

  void playAnimation() {
    _lottieAnimationController.forward().then(
          (value) => Navigator.push(
            context,
            PageTransition(
                child: const LanguageSelectionScreen(),
                type: PageTransitionType.rightToLeftWithFade,
                duration: const Duration(milliseconds: 200)),
          ),
        );
  }

  @override
  void dispose() {
    _lottieAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Scaffold(
        appBar: const VocabSetupAppBar(),
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Welcome!",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 0.35,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomCenter,
                child: Lottie.asset(
                  'images/lotties/setup/lottie_setupscreen_01.json',
                  fit: BoxFit.fitWidth,
                  width: constraints.maxWidth,
                  controller: _lottieAnimationController,
                  frameRate: FrameRate.max,
                  onLoaded: (composition) {
                    _lottieAnimationController.duration = composition.duration;
                  },
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.4,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: constraints.maxWidth * 0.1),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: constraints.maxHeight * 0.025,
                            horizontal: 0.0),
                        child: VocabPlatformButton(
                          title: const Text("Sign in with Google"),
                          icon: const FaIcon(FontAwesomeIcons.google),
                          onPressed: () async {
                            if (await Provider.of<AuthenticationService>(
                                        context,
                                        listen: false)
                                    .signInWithGoogle() ==
                                true) {
                              playAnimation();
                            }
                          },
                        ),
                      ),
                      VocabPlatformButton(
                        title: const Text("Sign in with Apple"),
                        icon: const FaIcon(FontAwesomeIcons.apple),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
                    child: VocabPlatformButton(
                      title: const Text("Sign in with Google"),
                      icon: const FaIcon(FontAwesomeIcons.google),
                      onPressed: () async {
                        if (await Provider.of<AuthenticationService>(context,
                                    listen: false)
                                .signInWithGoogle() ==
                            true) {
                          Navigator.push(
                            context,
                            PageTransition(
                                child: const LanguageSelectionScreen(),
                                type: PageTransitionType.rightToLeftWithFade,
                                duration: const Duration(milliseconds: 200)),
                          );
                        }
                      },
                    ),
                  ),
                  VocabPlatformButton(
                    title: const Text("Sign in with Apple"),
                    icon: const FaIcon(FontAwesomeIcons.apple),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );*/
  }
}
