import 'package:flutter/material.dart';
import 'package:recorder_poc/constants.dart';
import 'package:recorder_poc/statusEnums.dart';
import 'package:recorder_poc/widgets/patientCard.dart';
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  CommonElevatedButton(
                    hight: 48.0,
                    width: 369.0,
                    backgroundColor: AppConstants.primaryColor,
                    textColor: AppConstants.whiteColor,
                    fontSize: 15.0,
                    text: 'Next',
                    fontFamily: AppConstants.fontFamilyRoboto,
                    fontWeight: AppConstants.fontWeight500,
                  ),
                  const SizedBox(height: 15),
                  CommonTextButton(
                    fontFamilyRoboto: AppConstants.fontFamilyRoboto,
                    fontSize: 16.0,
                    fontWeight: AppConstants.fontWeight700,
                    text: 'Skip',
                    textColor: AppConstants.primaryColor,
                  ),
                  CommonElevatedButton(
                    hight: 48.0,
                    width: 369.0,
                    backgroundColor: AppConstants.primaryColor,
                    textColor: AppConstants.whiteColor,
                    fontSize: 15.0,
                    text: 'Get Started',
                    fontFamily: AppConstants.fontFamilyRoboto,
                    fontWeight: AppConstants.fontWeight500,
                  ),
                  const SizedBox(height: 15),
                  CommonElevatedButton(
                    hight: 48.0,
                    width: 369.0,
                    backgroundColor: AppConstants.primaryColor,
                    textColor: AppConstants.whiteColor,
                    fontSize: 15.0,
                    text: 'Login',
                    fontFamily: AppConstants.fontFamilyRoboto,
                    fontWeight: AppConstants.fontWeight500,
                  ),
                  const SizedBox(height: 15),
                  const PatientCard(
                    title: 'Patient A',
                    dob: '10/03/1990',
                    gender: 'female',
                    address: 'Boca Raton Regional Hospital',
                    date: 'Friday, 29 September',
                    time: '11:00 AM',
                    status: Status.noRecording,
                  ),
                  const SizedBox(height: 15),
                  const PatientCard(
                    title: 'Patient A',
                    dob: '10/03/1990',
                    gender: 'female',
                    address: 'Boca Raton Regional Hospital',
                    date: 'Friday, 29 September',
                    time: '11:00 AM',
                    status: Status.approved,
                  ),
                  const SizedBox(height: 15),
                  const PatientCard(
                    title: 'Patient A',
                    dob: '10/03/1990',
                    gender: 'female',
                    address: 'Boca Raton Regional Hospital',
                    date: 'Friday, 29 September',
                    time: '11:00 AM',
                    status: Status.rejected,
                  ),
                  const SizedBox(height: 15),
                  const PatientCard(
                    title: 'Patient A',
                    dob: '10/03/1990',
                    gender: 'female',
                    address: 'Boca Raton Regional Hospital',
                    date: 'Friday, 29 September',
                    time: '11:00 AM',
                    status: Status.pending,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
