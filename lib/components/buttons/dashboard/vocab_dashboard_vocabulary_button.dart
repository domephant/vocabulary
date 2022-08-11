import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VocabDashboardVocabularyButton extends StatelessWidget {
  final double width;
  const VocabDashboardVocabularyButton({Key? key, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              'images/dashboard/vocabulary-btn.svg',
              color: Theme.of(context).colorScheme.tertiaryContainer,
              width: width,
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Icon(
                    Icons.translate,
                    size: 40,
                  ),
                ),
                Text(
                  "5432100",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Text(
                  "Vocabulary items",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ],
            ),
            /*Positioned.fill(
                child: Material(
              color: Colors.transparent,
              child: InkWell(onTap: () {}),
            )), */
          ],
        ),
      ),
    );
  }
}
