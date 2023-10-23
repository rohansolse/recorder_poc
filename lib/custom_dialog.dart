import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final String message;
  final Function onFirstButtonPressed;
  final Function onSecondButtonPressed;

  const CustomDialog({
    super.key,
    required this.title,
    required this.message,
    required this.onFirstButtonPressed,
    required this.onSecondButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        TextButton(
          child: const Text("Button 1"),
          onPressed: () {
            onFirstButtonPressed();
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text("Button 2"),
          onPressed: () {
            onSecondButtonPressed();
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
