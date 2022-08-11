import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VocabDashboardAwardsButton extends StatelessWidget {
  final double width;
  const VocabDashboardAwardsButton({Key? key, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: SizedBox(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              'images/dashboard/awards-btn.svg',
              color: Theme.of(context).colorScheme.primaryContainer,
              width: width,
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Icon(
                    Icons.emoji_events,
                    size: 40,
                  ),
                ),
                Text(
                  "Better than",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Text(
                  "Google Translate",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ],
            ),
            /*Positioned.fill(
                child: Material(
              color: Colors.transparent,
              child: InkWell(onTap: () {}),
            )),*/
          ],
        ),
      ),
    );
  }
}
