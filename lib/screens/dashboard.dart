import 'package:flutter/material.dart';
import 'package:vocabulary/components/buttons/dashboard/vocab_dashboard_awards_button.dart';
import 'package:vocabulary/components/buttons/dashboard/vocab_dashboard_ranking_button.dart';
import 'package:vocabulary/components/buttons/dashboard/vocab_dashboard_training_button.dart';
import 'package:vocabulary/components/buttons/dashboard/vocab_dashboard_vocabulary_button.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Positioned(
            left: -constraints.maxWidth * 0.05,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: constraints.maxHeight * 0.125,
                ),
                VocabDashboardVocabularyButton(
                  width: (constraints.maxWidth * 0.6),
                )
              ],
            ),
          ),
          Positioned(
            right: -constraints.maxWidth * 0.175,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: constraints.maxHeight * 0.275,
                ),
                VocabDashboardTrainingButton(
                  width: (constraints.maxWidth * 0.7375),
                )
              ],
            ),
          ),
          Positioned(
            left: -constraints.maxWidth * 0.025,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: constraints.maxHeight * 0.65,
                ),
                VocabDashboardRankingsButton(
                  width: (constraints.maxWidth * 0.75),
                )
              ],
            ),
          ),
          Positioned(
            left: -constraints.maxWidth * 0.125,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: constraints.maxHeight * 0.4125,
                ),
                VocabDashboardAwardsButton(
                  width: (constraints.maxWidth * 0.6),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: constraints.maxHeight * 0.05),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Welcome back!",
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
