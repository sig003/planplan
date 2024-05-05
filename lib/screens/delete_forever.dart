import 'package:flutter/material.dart';
import 'package:planplan/screens/library.dart';

Future<void> DeleteForever(BuildContext context, setBottomIndex) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Delete Permanent Items'),
        content: const Text(
          'Do you want a permanent delete?',
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
                primary: Colors.red,
            ),
            child: const Text('Permanent Delete'),
            onPressed: () {
              deletePreference();
              setBottomIndex(1);
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}