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
      scrollable: true,
      title: Align(
        child: title,
        alignment: Alignment.center,
      ),
      backgroundColor: Colors.white,
      content: SizedBox.expand(
        child: FractionallySizedBox(widthFactor: 0.8, child: child),
      ),
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
