import 'package:flutter/material.dart';
import 'package:planplan/screens/library.dart';

Future<void> DoneJobDialog(BuildContext context, id, widget) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text('Job Done'),
      content: const Text('Is the job done?'),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel')
        ),
        TextButton(
            onPressed: () {
              dataAction('done', id ?? 'None', widget);
              Navigator.pop(context);
            },
            child: const Text('Done')
        ),
      ],
    ),
  );
}