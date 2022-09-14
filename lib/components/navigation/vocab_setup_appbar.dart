import 'package:flutter/material.dart';

class VocabSetupAppBar extends StatelessWidget implements PreferredSizeWidget {
  const VocabSetupAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: AppBar().preferredSize.height,
      surfaceTintColor: Colors.transparent,
      scrolledUnderElevation: 0.0,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
