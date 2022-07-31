import 'package:flutter/material.dart';

class DialogFrame extends StatelessWidget {
  final Widget? child;
  final Widget? title;
  final Color? buttonTextColor;
  const DialogFrame({Key? key, this.child, this.title, this.buttonTextColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: title,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      content: child,
      contentPadding: const EdgeInsets.fromLTRB(24, 10, 24, 24),
      actions: <Widget>[
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Cancel",
              style: TextStyle(
                  color: buttonTextColor ??
                      Theme.of(context).colorScheme.onBackground),
            )),
        TextButton(
          onPressed: () {},
          child: Text(
            "Ok",
            style: TextStyle(
                color: buttonTextColor ??
                    Theme.of(context).colorScheme.onBackground),
          ),
        ),
      ],
    );
  }
}
