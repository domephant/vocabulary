import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      primary: true,
      child: Align(
        alignment: Alignment.topCenter,
        child: FractionallySizedBox(
          widthFactor: 0.5,
          child: Column(
            children: [
              Lottie.asset('images/lotties/about/lottie_mini_dominik.json'),
              const Text("Coded with love by"),
              const Text("Dominik Schulz"),
              Lottie.asset('images/lotties/about/lottie_mini_robin.json'),
              const Text("Designed without sleep by"),
              const Text("Robin Adlung"),
              const Text("Special thanks goes to"),
              const Text("External libraries used.")
            ],
          ),
        ),
      ),
    );
  }
}
