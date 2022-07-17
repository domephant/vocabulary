import 'package:flutter/material.dart';
import 'package:vocabulary/screens/training/test_results/test_result_0.dart';
import 'package:vocabulary/screens/training/test_results/test_result_100.dart';
import 'package:vocabulary/screens/training/test_results/test_result_25.dart';
import 'package:vocabulary/screens/training/test_results/test_result_50.dart';
import 'package:vocabulary/screens/training/test_results/test_result_75.dart';
import 'package:vocabulary/screens/training/test_results/test_result_90.dart';

class TrainingSelectionScreen extends StatelessWidget {
  const TrainingSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TestResult0Screen(),
                  ));
            },
            child: Text("0-24")),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TestResult25Screen(),
                  ));
            },
            child: Text("25-49")),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TestResult50Screen(),
                  ));
            },
            child: Text("50-74")),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TestResult75Screen(),
                  ));
            },
            child: Text("75-89")),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TestResult90Screen(),
                  ));
            },
            child: Text("90-99")),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TestResult100Screen(),
                  ));
            },
            child: Text("100"))
      ],
    );
  }
}
