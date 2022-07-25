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
              Flexible(
                child: Text(
                  "Your Result",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.tertiary),
                ),
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
              FractionallySizedBox(
                widthFactor: 0.85,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const LevelUpsCard(
                      amount: 0,
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.01,
                    ),
                    const LevelDownsCard(
                      amount: 100,
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.075),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.replay_rounded,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer),
                          label: Text(
                            "Retry",
                            style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSecondaryContainer),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer)),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Continue",
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.onPrimary),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Theme.of(context).colorScheme.secondary),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
