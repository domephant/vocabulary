import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vocabulary/providers/page_index_provider.dart';
import 'package:vocabulary/screens/first_setup/welcome.dart';
import 'package:vocabulary/styles/color_schemes.g.dart';
import 'package:vocabulary/styles/custom_color.g.dart';
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
    return MaterialApp(
      title: 'Vocabulary',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        extensions: [lightCustomColors],
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
        scaffoldBackgroundColor: const Color(0xFFFFFBFF),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        extensions: [darkCustomColors],
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
      ),
      home: const WelcomeScreen(),
    );
  }
}
