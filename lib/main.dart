import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vocabulary/providers/page_index_provider.dart';
import 'package:vocabulary/styles/colors.dart';
import 'package:vocabulary/wrapper/page_wrapper.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => PageIndex(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            error: error,
            errorContainer: errorContainer),
        textTheme: Theme.of(context).textTheme.copyWith(
              displaySmall: const TextStyle(
                fontFamily: "Catamaran",
                fontSize: 28,
                fontWeight: FontWeight.w700,
                //height: 44,
              ),
              headlineMedium: const TextStyle(
                fontFamily: "Catamaran",
                fontSize: 28,
                fontWeight: FontWeight.w700,
                //height: 36,
              ),
              headlineSmall: const TextStyle(
                fontFamily: "Catamaran",
                fontSize: 24,
                fontWeight: FontWeight.w700,
                //height: 32,
              ),
              titleLarge: const TextStyle(
                fontFamily: "Catamaran",
                fontWeight: FontWeight.w600,
                fontSize: 22,
                //height: 28,
              ),
              labelLarge: const TextStyle(
                fontFamily: "Noto Sans",
                fontWeight: FontWeight.w600,
                fontSize: 14,
                //Commented out because of occuring bug
                //height: 20,
              ),
              bodyLarge: const TextStyle(
                fontFamily: "Noto Sans",
                fontWeight: FontWeight.w500,
                fontSize: 16,
                //height: 20,
              ),
              bodyMedium: const TextStyle(
                fontFamily: "Noto Sans",
                fontWeight: FontWeight.w400,
                fontSize: 14,
                //height: 20,
              ),
              bodySmall: const TextStyle(
                fontFamily: "Noto Sans",
                fontWeight: FontWeight.w400,
                fontSize: 12,
                //height: 16,
              ),
            ),
        useMaterial3: true);
    return MaterialApp(
      title: 'Vocabulary',
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: const PageWrapper(),
    );
  }
}
