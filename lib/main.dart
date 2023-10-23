// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'custom_dialog.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Dialog Example')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Custom Dialog'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => CustomDialog(
                title: "This is a custom dialog",
                message: "You can add any message here.",
                onFirstButtonPressed: () {},
                onSecondButtonPressed: () {},
              ),
            );
          },
        ),
      ),
    );
  }
}
