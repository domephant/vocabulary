import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vocabulary/components/buttons/vocab_fab.dart';
import 'package:vocabulary/components/navigation/vocab_appbar.dart';
import 'package:vocabulary/components/navigation/vocab_drawer.dart';
import 'package:vocabulary/providers/page_index_provider.dart';
import 'package:vocabulary/screens/about.dart';
import 'package:vocabulary/screens/awards.dart';
import 'package:vocabulary/screens/dashboard.dart';
import 'package:vocabulary/screens/donate_support_screen.dart';
import 'package:vocabulary/screens/import_export.dart';
import 'package:vocabulary/screens/rankings.dart';
import 'package:vocabulary/screens/settings.dart';
import 'package:vocabulary/screens/statistics.dart';
import 'package:vocabulary/screens/training/setup/training_selection.dart';
import 'package:vocabulary/screens/vocabulary_overview.dart';

class PageWrapper extends StatefulWidget {
  const PageWrapper({Key? key}) : super(key: key);

  @override
  State<PageWrapper> createState() => _PageWrapperState();
}

class _PageWrapperState extends State<PageWrapper> {
  PreferredSizeWidget appBar = const VocabAppBar(
    profile: true,
  );
  bool enableFAB = true;

  void onDrawerTap() {
    int index = Provider.of<PageIndex>(context, listen: false).pageIndex;
    setState(
      () {
        switch (index) {
          case 0:
            appBar = const VocabAppBar(
              profile: true,
              saveButton: false,
            );
            enableFAB = true;
            break;
          case 1:
            appBar = const VocabAppBar(
              profile: false,
              saveButton: false,
            );
            enableFAB = true;
            break;
          case 2:
            appBar = const VocabAppBar(
              profile: true,
              saveButton: false,
            );
            enableFAB = false;
            break;
          case 3:
            appBar = const VocabAppBar(
              profile: false,
              saveButton: false,
            );
            enableFAB = false;
            break;
          case 4:
            appBar = const VocabAppBar(
              profile: true,
              saveButton: false,
            );
            enableFAB = false;
            break;
          case 6:
            appBar = const VocabAppBar(
              profile: true,
              saveButton: false,
            );
            enableFAB = false;
            break;
          case 7:
            appBar = const VocabAppBar(
              profile: false,
              saveButton: false,
            );
            enableFAB = false;
            break;
          case 8:
            appBar = const VocabAppBar(
              profile: false,
              title: Text("Settings"),
              saveButton: false,
            );
            enableFAB = false;
            break;
          case 9:
            appBar = const VocabAppBar(
              profile: false,
              saveButton: false,
              title: Text("About Vocab"),
            );
            enableFAB = false;
            break;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: VocabDrawer(onTap: onDrawerTap),
      appBar: appBar,
      body: Consumer<PageIndex>(
        builder: (context, value, child) {
          switch (value.pageIndex) {
            case 0:
              return const DashboardScreen();
            case 1:
              return const VocabularyOverviewScreen();
            case 2:
              return const TrainingSelectionScreen();
            case 3:
              return const StatisticsScreen();
            case 4:
              return const AwardsScreen();
            case 5:
              return const RankingsScreen();
            case 6:
              return const ImportExportScreen();
            case 7:
              return const DonateSupportScreen();
            case 8:
              return const SettingsScreen();
            case 9:
              return const AboutScreen();
            default:
              return const DashboardScreen();
          }
        },
      ),
      floatingActionButton:
          enableFAB ? const VocabFloatingActionButton() : null,
    );
  }
}
