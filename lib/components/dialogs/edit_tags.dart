import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vocabulary/components/dialogs/dialog_frame.dart';
import 'package:vocabulary/components/selection/vocab_color_selection_row.dart';

class EditTagsDialog extends StatelessWidget {
  const EditTagsDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _tagNameController = TextEditingController();

    return StatefulBuilder(
      builder: (context, setState) => DialogFrame(
        buttonTextColor: Theme.of(context).colorScheme.primary,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: SvgPicture.asset(
                'images/icons/label-icon.svg',
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            Text(
              "Edit Tag",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tag name",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            TextField(
              controller: _tagNameController,
              decoration: InputDecoration(
                focusColor: Theme.of(context).colorScheme.onSurface,
                fillColor: Theme.of(context).colorScheme.onSurface,
                border: const UnderlineInputBorder(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
              child: Text(
                "Color",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            const ColorSelectionRow()
          ],
        ),
      ),
    );
  }
}
