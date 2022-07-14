import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vocabulary/providers/page_index_provider.dart';
import 'package:vocabulary/screens/first_setup/welcome.dart';
import 'package:vocabulary/styles/colors.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => PageIndex(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final ThemeData themeData = ThemeData.from(
      colorScheme: const ColorScheme.light().copyWith(
        primary: primary40,
        onPrimary: primary0,
        onPrimaryContainer: primary10,
        primaryContainer: primary90,
        secondary: secondary40,
        onSecondary: secondary0,
        onSecondaryContainer: secondary10,
        secondaryContainer: secondary90,
        tertiary: tertiary40,
        onTertiary: tertiary0,
        onTertiaryContainer: tertiary10,
        tertiaryContainer: tertiary90,
      ),
      useMaterial3: true);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vocabulary',
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: const WelcomeScreen(),
    );
  }
}
