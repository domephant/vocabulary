import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:vocabulary/components/cards/level_downs_card.dart';
import 'package:vocabulary/components/cards/level_ups_card.dart';
import 'package:vocabulary/styles/additional_fonts.dart';

class TestResult50Screen extends StatelessWidget {
  const TestResult50Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          body: Stack(
            children: [
              Center(
                child: SizedBox(
                  height: constraints.maxHeight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: constraints.maxHeight * 0.5,
                        child: Padding(
                          padding:
                              EdgeInsets.only(top: constraints.maxHeight * 0.1),
                          child: Text(
                            "Your Result",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: constraints.maxHeight * 0.5,
                        width: constraints.maxWidth * 0.85,
                        child: Column(
                          children: [
                            Text(
                              "Simply good.",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    " 50 ",
                                    style: AdditionalFonts.points.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary),
                                  ),
                                  Icon(Icons.auto_awesome,
                                      size: 36,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                                ],
                                mainAxisAlignment: MainAxisAlignment.center,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: LevelUpsCard(
                                amount: 0,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: LevelDownsCard(
                                amount: 100,
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: FractionalOffset.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 48.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Theme.of(context)
                                                        .colorScheme
                                                        .secondaryContainer)),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Continue",
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary),
                                        ),
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Theme.of(context)
                                                      .colorScheme
                                                      .secondary),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: constraints.maxWidth,
                height: constraints.maxHeight * 0.50,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter,
                  child: Lottie.asset(
                    'images/lotties/training/test_results/lottie_resultscreen_stage3.json',
                    fit: BoxFit.fitWidth,
                    width: constraints.maxWidth,
                    repeat: false,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
