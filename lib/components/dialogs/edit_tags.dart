import 'package:flutter/material.dart';
import 'package:vocabulary/components/dialogs/dialog_frame.dart';

class EditTagsDialog extends StatelessWidget {
  const EditTagsDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) => DialogFrame(
        buttonTextColor: Theme.of(context).colorScheme.primary,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.tag, color: Theme.of(context).colorScheme.primary),
            const Text("Edit Tag"),
          ],
        ),
      ),
    );
  }
}
