import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:vocabulary/components/cards/level_downs_card.dart';
import 'package:vocabulary/components/cards/level_ups_card.dart';

class TestResult0Screen extends StatelessWidget {
  const TestResult0Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(automaticallyImplyLeading: false),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Your Result",
                style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
              ),
              SizedBox(
                width: constraints.maxWidth,
                height: constraints.maxHeight * 0.375,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter,
                  child: Lottie.asset(
                    'images/lotties/training/test_results/lottie_resultscreen_stage0.json',
                    fit: BoxFit.fitWidth,
                    width: constraints.maxWidth,
                    repeat: false,
                  ),
                ),
              ),
              Text(
                "Keep learning!",
                style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: constraints.maxHeight * 0.04),
                child: Row(
                  children: [
                    Text(
                      "0",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.tertiary),
                    ),
                    Icon(Icons.auto_awesome,
                        color: Theme.of(context).colorScheme.tertiary),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
              const LevelUpsCard(
                amount: 0,
              ),
              SizedBox(
                height: constraints.maxHeight * 0.01,
              ),
              const LevelDownsCard(
                amount: 100,
              ),
            ],
          ),
        );
      },
    );
  }
}
