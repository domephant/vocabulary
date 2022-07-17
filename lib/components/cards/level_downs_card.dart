import 'package:flutter/material.dart';

class LevelDownsCard extends StatelessWidget {
  final int amount;
  const LevelDownsCard({Key? key, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Container(
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
            style: TextStyle(color: Theme.of(context).colorScheme.error),
          ),
        ),
      ),
    );
  }
}
