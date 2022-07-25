import 'package:flutter/material.dart';

class VocabAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool? profile;
  final Text? title;
  const VocabAppBar({
    Key? key,
    this.profile,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: AppBar().preferredSize.height * 1.25,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        icon: const Icon(Icons.menu),
      ),
      title: title,
      actions: [
        if (profile == true)
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          )
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize * 1.25;
}
