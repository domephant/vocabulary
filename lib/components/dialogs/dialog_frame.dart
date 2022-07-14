import 'package:flutter/material.dart';

class DialogFrame extends StatelessWidget {
  final Widget? child;
  final Widget? title;
  const DialogFrame({Key? key, this.child, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: Align(
        child: title,
        alignment: Alignment.center,
      ),
      backgroundColor: Colors.white,
      content: SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width * 0.8,
          child: child),
      actions: <Widget>[
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Cancel")),
        TextButton(onPressed: () {}, child: const Text("Ok")),
      ],
    );
  }
}
