import 'package:flutter/material.dart';
import 'package:vocabulary/components/buttons/dashboard/vocab_dashboard_training_button.dart';
import 'package:vocabulary/components/buttons/dashboard/vocab_dashboard_vocabulary_button.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Stack(
      clipBehavior: Clip.hardEdge,
      children: [
        Positioned(
          left: -30,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.125,
              ),
              const VocabDashboardVocabularyButton()
            ],
          ),
        ),
        Positioned(
          right: -30,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.25,
              ),
              const VocabDashboardTrainingButton()
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.05),
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Welcome back!",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
          ),
        ),
      ],
    );
  }
}
