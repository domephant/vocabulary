import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vocabulary/components/buttons/vocab_first_setup_button.dart';
import 'package:vocabulary/components/navigation/vocab_setup_appbar.dart';
import 'package:vocabulary/components/selection/vocab_checkbox.dart';
import 'package:vocabulary/models/enums/languages.dart';
import 'package:vocabulary/screens/first_setup/setup_finished.dart';

class LanguageSelectionScreen extends StatelessWidget {
  const LanguageSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Scaffold(
        appBar: const VocabSetupAppBar(),
        body: Stack(
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Select your languages",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Theme.of(context).colorScheme.tertiary),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text("Don't worry. You can change it later.",
                    style: Theme.of(context).textTheme.bodyLarge),
              ],
            ),
            SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 0.35,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomCenter,
                child: Lottie.asset(
                  'images/lotties/setup/lottie_setupscreen_02.json',
                  fit: BoxFit.fitWidth,
                  width: constraints.maxWidth,
                  repeat: false,
                  frameRate: FrameRate.max,
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.4,
                ),
                SizedBox(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.4,
                  child: const VocabLanguageListView(),
                ),
              ],
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
                      title: Text(
                        "Next",
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(
                              child: const VocabSetupFinishedScreen(),
                              type: PageTransitionType.rightToLeftWithFade,
                              duration: const Duration(milliseconds: 250)),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Theme.of(context).colorScheme.tertiary),
                        foregroundColor: MaterialStateProperty.all(
                            Theme.of(context).colorScheme.onPrimary),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class VocabLanguageListView extends StatefulWidget {
  const VocabLanguageListView({
    Key? key,
  }) : super(key: key);

  @override
  State<VocabLanguageListView> createState() => _VocabLanguageListViewState();
}

class _VocabLanguageListViewState extends State<VocabLanguageListView> {
  List<Languages> selectedValues = [];

  void toggleValue(Languages lang) {
    setState(() {
      if (!selectedValues.contains(lang)) {
        selectedValues.add(lang);
      } else {
        selectedValues.remove(lang);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: Languages.values.length,
        itemBuilder: (context, index) {
          return VocabCheckBox(
            title: EnumToString.convertToString(
                Languages.values.elementAt(index),
                camelCase: true),
            update: () => toggleValue(Languages.values.elementAt(index)),
            ticked: selectedValues.contains(Languages.values.elementAt(index)),
          );
        },
      ),
    );
  }
}
