import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vocabulary/components/navigation/vocab_listtile.dart';
import 'package:vocabulary/providers/page_index_provider.dart';

class VocabDrawer extends StatefulWidget {
  final VoidCallback onTap;
  const VocabDrawer({Key? key, required this.onTap}) : super(key: key);

  @override
  State<VocabDrawer> createState() => _VocabDrawerState();
}

class _VocabDrawerState extends State<VocabDrawer> {
  final List<String> itemsTitles = const [
    "Dashboard",
    "My Vocabulary",
    "Training",
    "Statistics",
    "Awards",
    "Rankings",
    "Import & Export",
    "Donate & Support",
    "Settings",
    "About Vocab",
  ];

  final List<Icon> itemsIcons = const [
    Icon(Icons.home_rounded),
    Icon(Icons.translate),
    Icon(Icons.school),
    Icon(Icons.pie_chart),
    Icon(Icons.emoji_events),
    Icon(Icons.trending_up),
    Icon(Icons.import_export),
    Icon(Icons.favorite),
    Icon(Icons.settings),
    Icon(Icons.info)
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<PageIndex>(
      builder: (context, pageIndex, child) {
        return Drawer(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
            child: ListView.builder(
              itemCount: itemsTitles.length,
              itemBuilder: (context, index) {
                return VocabListTile(
                  icon: itemsIcons[index],
                  title: itemsTitles[index],
                  enabled: pageIndex.pageIndex == index,
                  onPressed: () {
                    setState(() {
                      pageIndex.changeNumber(index);
                    });
                    widget.onTap();
                    Scaffold.of(context).closeDrawer();
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}
