import 'package:flutter/material.dart';

const CustomRed = Color(0xFFFFB3AB);
const CustomOrange = Color(0xFFFEB96B);
const CustomYellow = Color(0xFFEDC353);
const CustomPurple = Color(0xFFE9AFFC);
const CustomBlue = Color(0xFFA8C5FD);
const CustomGreen = Color(0xFFADD575);

CustomColors lightCustomColors = const CustomColors(
  CustomRed: Color(0xFF9C423B),
  onCustomRed: Color(0xFFFFFFFF),
  CustomRedContainer: Color(0xFFFFDAD6),
  onCustomRedContainer: Color(0xFF410002),
  CustomOrange: Color(0xFF885200),
  onCustomOrange: Color(0xFFFFFFFF),
  CustomOrangeContainer: Color(0xFFFFDDBB),
  onCustomOrangeContainer: Color(0xFF2B1700),
  CustomYellow: Color(0xFF765B00),
  onCustomYellow: Color(0xFFFFFFFF),
  CustomYellowContainer: Color(0xFFFFDF94),
  onCustomYellowContainer: Color(0xFF241A00),
  CustomPurple: Color(0xFF7F4894),
  onCustomPurple: Color(0xFFFFFFFF),
  CustomPurpleContainer: Color(0xFFF8D8FF),
  onCustomPurpleContainer: Color(0xFF320046),
  CustomBlue: Color(0xFF2B5EA7),
  onCustomBlue: Color(0xFFFFFFFF),
  CustomBlueContainer: Color(0xFFD7E3FF),
  onCustomBlueContainer: Color(0xFF001B3E),
  CustomGreen: Color(0xFF466811),
  onCustomGreen: Color(0xFFFFFFFF),
  CustomGreenContainer: Color(0xFFC6F08A),
  onCustomGreenContainer: Color(0xFF112000),
);

CustomColors darkCustomColors = const CustomColors(
  CustomRed: Color(0xFFFFB4AC),
  onCustomRed: Color(0xFF5F1412),
  CustomRedContainer: Color(0xFF7E2B25),
  onCustomRedContainer: Color(0xFFFFDAD6),
  CustomOrange: Color(0xFFFFB868),
  onCustomOrange: Color(0xFF482900),
  CustomOrangeContainer: Color(0xFF673D00),
  onCustomOrangeContainer: Color(0xFFFFDDBB),
  CustomYellow: Color(0xFFEDC148),
  onCustomYellow: Color(0xFF3E2E00),
  CustomYellowContainer: Color(0xFF594400),
  onCustomYellowContainer: Color(0xFFFFDF94),
  CustomPurple: Color(0xFFECB2FF),
  onCustomPurple: Color(0xFF4C1662),
  CustomPurpleContainer: Color(0xFF65307A),
  onCustomPurpleContainer: Color(0xFFF8D8FF),
  CustomBlue: Color(0xFFAAC7FF),
  onCustomBlue: Color(0xFF002F65),
  CustomBlueContainer: Color(0xFF00458E),
  onCustomBlueContainer: Color(0xFFD7E3FF),
  CustomGreen: Color(0xFFABD471),
  onCustomGreen: Color(0xFF213600),
  CustomGreenContainer: Color(0xFF314F00),
  onCustomGreenContainer: Color(0xFFC6F08A),
);

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.CustomRed,
    required this.onCustomRed,
    required this.CustomRedContainer,
    required this.onCustomRedContainer,
    required this.CustomOrange,
    required this.onCustomOrange,
    required this.CustomOrangeContainer,
    required this.onCustomOrangeContainer,
    required this.CustomYellow,
    required this.onCustomYellow,
    required this.CustomYellowContainer,
    required this.onCustomYellowContainer,
    required this.CustomPurple,
    required this.onCustomPurple,
    required this.CustomPurpleContainer,
    required this.onCustomPurpleContainer,
    required this.CustomBlue,
    required this.onCustomBlue,
    required this.CustomBlueContainer,
    required this.onCustomBlueContainer,
    required this.CustomGreen,
    required this.onCustomGreen,
    required this.CustomGreenContainer,
    required this.onCustomGreenContainer,
  });

  final Color? CustomRed;
  final Color? onCustomRed;
  final Color? CustomRedContainer;
  final Color? onCustomRedContainer;
  final Color? CustomOrange;
  final Color? onCustomOrange;
  final Color? CustomOrangeContainer;
  final Color? onCustomOrangeContainer;
  final Color? CustomYellow;
  final Color? onCustomYellow;
  final Color? CustomYellowContainer;
  final Color? onCustomYellowContainer;
  final Color? CustomPurple;
  final Color? onCustomPurple;
  final Color? CustomPurpleContainer;
  final Color? onCustomPurpleContainer;
  final Color? CustomBlue;
  final Color? onCustomBlue;
  final Color? CustomBlueContainer;
  final Color? onCustomBlueContainer;
  final Color? CustomGreen;
  final Color? onCustomGreen;
  final Color? CustomGreenContainer;
  final Color? onCustomGreenContainer;

  @override
  CustomColors copyWith({
    Color? CustomRed,
    Color? onCustomRed,
    Color? CustomRedContainer,
    Color? onCustomRedContainer,
    Color? CustomOrange,
    Color? onCustomOrange,
    Color? CustomOrangeContainer,
    Color? onCustomOrangeContainer,
    Color? CustomYellow,
    Color? onCustomYellow,
    Color? CustomYellowContainer,
    Color? onCustomYellowContainer,
    Color? CustomPurple,
    Color? onCustomPurple,
    Color? CustomPurpleContainer,
    Color? onCustomPurpleContainer,
    Color? CustomBlue,
    Color? onCustomBlue,
    Color? CustomBlueContainer,
    Color? onCustomBlueContainer,
    Color? CustomGreen,
    Color? onCustomGreen,
    Color? CustomGreenContainer,
    Color? onCustomGreenContainer,
  }) {
    return CustomColors(
      CustomRed: CustomRed ?? this.CustomRed,
      onCustomRed: onCustomRed ?? this.onCustomRed,
      CustomRedContainer: CustomRedContainer ?? this.CustomRedContainer,
      onCustomRedContainer: onCustomRedContainer ?? this.onCustomRedContainer,
      CustomOrange: CustomOrange ?? this.CustomOrange,
      onCustomOrange: onCustomOrange ?? this.onCustomOrange,
      CustomOrangeContainer: CustomOrangeContainer ?? this.CustomOrangeContainer,
      onCustomOrangeContainer: onCustomOrangeContainer ?? this.onCustomOrangeContainer,
      CustomYellow: CustomYellow ?? this.CustomYellow,
      onCustomYellow: onCustomYellow ?? this.onCustomYellow,
      CustomYellowContainer: CustomYellowContainer ?? this.CustomYellowContainer,
      onCustomYellowContainer: onCustomYellowContainer ?? this.onCustomYellowContainer,
      CustomPurple: CustomPurple ?? this.CustomPurple,
      onCustomPurple: onCustomPurple ?? this.onCustomPurple,
      CustomPurpleContainer: CustomPurpleContainer ?? this.CustomPurpleContainer,
      onCustomPurpleContainer: onCustomPurpleContainer ?? this.onCustomPurpleContainer,
      CustomBlue: CustomBlue ?? this.CustomBlue,
      onCustomBlue: onCustomBlue ?? this.onCustomBlue,
      CustomBlueContainer: CustomBlueContainer ?? this.CustomBlueContainer,
      onCustomBlueContainer: onCustomBlueContainer ?? this.onCustomBlueContainer,
      CustomGreen: CustomGreen ?? this.CustomGreen,
      onCustomGreen: onCustomGreen ?? this.onCustomGreen,
      CustomGreenContainer: CustomGreenContainer ?? this.CustomGreenContainer,
      onCustomGreenContainer: onCustomGreenContainer ?? this.onCustomGreenContainer,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      CustomRed: Color.lerp(CustomRed, other.CustomRed, t),
      onCustomRed: Color.lerp(onCustomRed, other.onCustomRed, t),
      CustomRedContainer: Color.lerp(CustomRedContainer, other.CustomRedContainer, t),
      onCustomRedContainer: Color.lerp(onCustomRedContainer, other.onCustomRedContainer, t),
      CustomOrange: Color.lerp(CustomOrange, other.CustomOrange, t),
      onCustomOrange: Color.lerp(onCustomOrange, other.onCustomOrange, t),
      CustomOrangeContainer: Color.lerp(CustomOrangeContainer, other.CustomOrangeContainer, t),
      onCustomOrangeContainer: Color.lerp(onCustomOrangeContainer, other.onCustomOrangeContainer, t),
      CustomYellow: Color.lerp(CustomYellow, other.CustomYellow, t),
      onCustomYellow: Color.lerp(onCustomYellow, other.onCustomYellow, t),
      CustomYellowContainer: Color.lerp(CustomYellowContainer, other.CustomYellowContainer, t),
      onCustomYellowContainer: Color.lerp(onCustomYellowContainer, other.onCustomYellowContainer, t),
      CustomPurple: Color.lerp(CustomPurple, other.CustomPurple, t),
      onCustomPurple: Color.lerp(onCustomPurple, other.onCustomPurple, t),
      CustomPurpleContainer: Color.lerp(CustomPurpleContainer, other.CustomPurpleContainer, t),
      onCustomPurpleContainer: Color.lerp(onCustomPurpleContainer, other.onCustomPurpleContainer, t),
      CustomBlue: Color.lerp(CustomBlue, other.CustomBlue, t),
      onCustomBlue: Color.lerp(onCustomBlue, other.onCustomBlue, t),
      CustomBlueContainer: Color.lerp(CustomBlueContainer, other.CustomBlueContainer, t),
      onCustomBlueContainer: Color.lerp(onCustomBlueContainer, other.onCustomBlueContainer, t),
      CustomGreen: Color.lerp(CustomGreen, other.CustomGreen, t),
      onCustomGreen: Color.lerp(onCustomGreen, other.onCustomGreen, t),
      CustomGreenContainer: Color.lerp(CustomGreenContainer, other.CustomGreenContainer, t),
      onCustomGreenContainer: Color.lerp(onCustomGreenContainer, other.onCustomGreenContainer, t),
    );
  }

  CustomColors harmonized(ColorScheme dynamic) {
    return copyWith(
    );
  }
}