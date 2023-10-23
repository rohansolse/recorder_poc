import 'package:flutter/material.dart';
import 'package:recorder_poc/common_elevated_button.dart';
import 'package:recorder_poc/show_common_sheet.dart';

import 'constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bottom Sheet with Checklist',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstants.primaryColor,
        title: const Text(
          'Flutter Bottom Sheet with Checklist',
          style: TextStyle(
            color: AppConstants.whiteColor,
            fontWeight: FontWeight.w700,
            fontFamily: 'Archivo',
            fontSize: 22,
          ),
        ),
      ),
      body: Center(
        child:
            // ElevatedButton(
            //   child: const Text('Show Bottom Sheet'),
            //   onPressed: () => showBottomSheetWidget(context),
            // ),
            CommonElevatedButton(
          elevation: 0,
          hight: 48.0,
          width: 159.0,
          backgroundColor: AppConstants.primaryColor,
          textColor: AppConstants.whiteColor,
          fontSize: 16.0,
          text: 'Show Bottom Sheet',
          borderColor: AppConstants.primaryColor,
          fontFamily: AppConstants.fontFamilyRoboto,
          fontWeight: AppConstants.fontWeight500,
          onPressed: () {
            showBottomSheetWidget(context);
          },
          iconLink: '',
        ),
      ),
    );
  }
}
