import 'package:flutter/material.dart';
import 'package:vocabulary/styles/colors.dart';

class LevelUpsCard extends StatelessWidget {
  final int amount;
  const LevelUpsCard({Key? key, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: levelUpGreen,
      ),
      child: ListTile(
        leading: const Icon(
          Icons.north_east,
          color: Colors.black,
        ),
        title: const Text("Level Ups"),
        trailing: Text(amount.toString()),
      ),
    );
  }
}
