import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VocabDashboardRankingsButton extends StatelessWidget {
  final double width;

  const VocabDashboardRankingsButton({Key? key, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(
            'images/dashboard/ranking-btn.svg',
            color: Theme.of(context).colorScheme.surfaceVariant,
            width: width,
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Icon(
                  Icons.trending_up,
                  size: 40,
                ),
              ),
              Text(
                "You are currently",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Text(
                "ranked Place 4",
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
