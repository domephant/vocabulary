import 'package:flutter/material.dart';
import 'package:vocabulary/styles/additional_fonts.dart';

class LevelDownsCard extends StatelessWidget {
  final int amount;
  const LevelDownsCard({Key? key, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Theme.of(context).colorScheme.errorContainer,
      ),
      child: ListTile(
        leading: Icon(
          Icons.south_east,
          color: Theme.of(context).colorScheme.error,
        ),
        title: const Text("Level Downs"),
        trailing: Text(
          amount.toString(),
          style: AdditionalFonts()
              .pointsSmall
              .copyWith(color: Theme.of(context).colorScheme.error),
        ),
      ),
    );
  }
}
