import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vocabulary/services/authentication_service.dart';

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
      toolbarHeight: AppBar().preferredSize.height,
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
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: CircleAvatar(
              radius: 16,
              child: ClipOval(
                child: Image.network(
                  Provider.of<AuthenticationService>(context, listen: false)
                      .user!
                      .photoUrl!,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          )
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
