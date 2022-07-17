import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vocabulary/providers/page_index_provider.dart';
import 'package:vocabulary/screens/dashboard.dart';
import 'package:vocabulary/screens/first_setup/welcome.dart';
import 'package:vocabulary/styles/colors.dart';
import 'package:vocabulary/styles/text_styles.dart';
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
              headline6: VocabTextStyle().vocabHeader2,
              button: VocabTextStyle().vocabButtons,
              bodyText2: VocabTextStyle().vocabBodyRegular,
              subtitle2: VocabTextStyle().vocabBodyRegular,
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
