import 'package:flutter/cupertino.dart';

class VocabTextStyle {
//Used for Your Result Screen
  TextStyle get vocabHeader1 => const TextStyle(
        fontFamily: "Catamaran Bold",
        fontSize: 30,
      );

//Used for Appbar
  TextStyle get vocabHeader2 => const TextStyle(
        fontFamily: "Catamaran Bold",
        fontSize: 26,
      );

//Used for Result Score
  TextStyle get vocabScore => const TextStyle(
        fontFamily: "Noto Sans",
        fontWeight: FontWeight.w800,
        fontSize: 36,
      );

//used for Level Ups/Level Downs
  TextStyle get vocabLevelChanges => const TextStyle(
        fontFamily: "Noto Sans",
        fontWeight: FontWeight.w700,
        fontSize: 22,
      );

//body text
  TextStyle get vocabBodyRegular => const TextStyle(
        fontFamily: "Noto Sans",
        fontWeight: FontWeight.w400,
        fontSize: 18,
      );

//bold body text
  TextStyle get vocabBodyBold => const TextStyle(
        fontFamily: "Noto Sans",
        fontWeight: FontWeight.w700,
        fontSize: 18,
      );

//used for Chips
  TextStyle get vocabChips => const TextStyle(
        fontFamily: "Noto Sans",
        fontWeight: FontWeight.w400,
        fontSize: 16,
      );

//used for Buttons
  TextStyle get vocabButtons => const TextStyle(
        fontFamily: "Noto Sans",
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );

//Color Outline not implemented, to be done on a Widget basis
  TextStyle get vocabInputLabels => const TextStyle(
        fontFamily: "Noto Sans",
        fontWeight: FontWeight.w400,
        fontSize: 14,
      );

//Used for certain labels (buttons and cards)
  TextStyle get vocabButtonCardLabels => const TextStyle(
        fontFamily: "Noto Sans SemiCondensed",
        fontWeight: FontWeight.w600,
        fontSize: 14,
      );
}
