import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vocabulary/styles/custom_color.g.dart';

class VocabDashboardTrainingButton extends StatelessWidget {
  const VocabDashboardTrainingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SizedBox.fromSize(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(
            'images/dashboard/vocabulary-btn.svg',
            color: CustomGreen,
            width: size.width * 0.65,
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Icon(
                  Icons.translate,
                  size: 48,
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
        ],
      ),
    );
  }
}
