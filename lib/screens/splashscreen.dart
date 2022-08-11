import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:vocabulary/screens/first_setup/welcome.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: (5)),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutBuilder(
      builder: (context, constraints) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: constraints.maxWidth,
            height: constraints.maxHeight * 0.50,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              alignment: Alignment.center,
              child: Lottie.asset(
                'images/lotties/setup/lottie_splashscreen.json',
                controller: _controller,
                fit: BoxFit.fitWidth,
                width: constraints.maxWidth,
                repeat: false,
                frameRate: FrameRate.max,
                animate: true,
                onLoaded: (composition) {
                  _controller
                    ..duration = composition.duration
                    ..forward().whenComplete(() => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WelcomeScreen()),
                        ));
                },
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
