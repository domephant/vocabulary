import 'package:flutter/material.dart';

class VocabSetupAppBar extends StatelessWidget implements PreferredSizeWidget {
  const VocabSetupAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: AppBar().preferredSize.height,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
