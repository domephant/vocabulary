import 'package:flutter/material.dart';
import 'package:vocabulary/styles/additional_fonts.dart';
import 'package:vocabulary/styles/custom_color.g.dart';

class LevelUpsCard extends StatelessWidget {
  final int amount;
  const LevelUpsCard({Key? key, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color:
            Theme.of(context).extension<CustomColors>()!.CustomGreenContainer,
      ),
      child: ListTile(
        leading: Icon(
          Icons.north_east,
          color: Theme.of(context)
              .extension<CustomColors>()!
              .onCustomGreenContainer,
        ),
        title: Text(
          "Level Ups",
          style: TextStyle(
            color: Theme.of(context)
                .extension<CustomColors>()!
                .onCustomGreenContainer,
          ),
        ),
        trailing: Text(amount.toString(),
            style: AdditionalFonts.pointsSmall.copyWith(
                color: Theme.of(context)
                    .extension<CustomColors>()!
                    .onCustomGreenContainer)),
      ),
    );
  }
}
