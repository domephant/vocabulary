import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VocabDashboardTrainingButton extends StatelessWidget {
  final double width;
  const VocabDashboardTrainingButton({Key? key, required this.width})
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
              'images/dashboard/training-btn.svg',
              color: Theme.of(context).colorScheme.secondaryContainer,
              width: width,
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Icon(
                    Icons.school,
                    size: 40,
                  ),
                ),
                Text(
                  "Start your training",
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
