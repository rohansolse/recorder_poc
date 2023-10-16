import 'package:flutter/material.dart';
import 'package:recorder_poc/constants.dart';
import 'package:recorder_poc/widgets/commonCard.dart';
import 'package:recorder_poc/widgets/commonTextButton.dart';
import 'package:recorder_poc/widgets/comonElevatedButton.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
          body: Center(
            child: Column(
              children: [
                const SizedBox(height: 15),
                commonElevatedButton(
                  400.0,
                  40.0,
                  AppConstants.primaryColor,
                  AppConstants.whiteColor,
                  15.0,
                  'Next',
                  AppConstants.fontFamilyRoboto,
                  AppConstants.fontWeight500,
                ),
                const SizedBox(height: 15),
                commonTextButton(
                  AppConstants.primaryColor,
                  AppConstants.fontFamilyRoboto,
                  16.0,
                  'Skip',
                  AppConstants.fontWeight700,
                ),
                commonElevatedButton(
                  400.0,
                  40.0,
                  AppConstants.primaryColor,
                  AppConstants.whiteColor,
                  15.0,
                  'Get Started',
                  AppConstants.fontFamilyRoboto,
                  AppConstants.fontWeight500,
                ),
                const SizedBox(height: 15),
                commonElevatedButton(
                  400.0,
                  40.0,
                  AppConstants.primaryColor,
                  AppConstants.whiteColor,
                  15.0,
                  'Login',
                  AppConstants.fontFamilyRoboto,
                  AppConstants.fontWeight500,
                ),
                const SizedBox(height: 15),
                commonCard(
                  'Patient A',
                  '10/03/1990',
                  'female',
                  'Boca Raton Regional Hospital',
                  'Firday, 29 September',
                  '11:00 AM',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
