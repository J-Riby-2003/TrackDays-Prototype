import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  final String dialogMessage;

  const ErrorDialog({super.key, required this.dialogMessage});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Error'),
      content: SingleChildScrollView(
        child: ListBody(children: <Widget>[Text(dialogMessage)]),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('OK'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
