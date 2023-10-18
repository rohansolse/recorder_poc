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
                    elevation: 0,
                    hight: 48.0,
                    width: 369.0,
                    backgroundColor: AppConstants.primaryColor,
                    textColor: AppConstants.whiteColor,
                    fontSize: 15.0,
                    text: 'Next',
                    borderColor: AppConstants.primaryColor,
                    fontFamily: AppConstants.fontFamilyRoboto,
                    fontWeight: AppConstants.fontWeight500,
                    onPressed: () {},
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
                    elevation: 0,
                    hight: 48.0,
                    width: 369.0,
                    backgroundColor: AppConstants.primaryColor,
                    textColor: AppConstants.whiteColor,
                    fontSize: 15.0,
                    text: 'Get Started',
                    borderColor: AppConstants.primaryColor,
                    fontFamily: AppConstants.fontFamilyRoboto,
                    fontWeight: AppConstants.fontWeight500,
                    onPressed: () {},
                  ),
                  const SizedBox(height: 15),
                  CommonElevatedButton(
                    elevation: 0,
                    hight: 48.0,
                    width: 369.0,
                    backgroundColor: AppConstants.primaryColor,
                    textColor: AppConstants.whiteColor,
                    fontSize: 15.0,
                    text: 'Login',
                    borderColor: AppConstants.primaryColor,
                    fontFamily: AppConstants.fontFamilyRoboto,
                    fontWeight: AppConstants.fontWeight500,
                    onPressed: () {},
                  ),
                  const SizedBox(height: 15),
                  CommonElevatedButton(
                    elevation: 0,
                    hight: 48.0,
                    width: 369.0,
                    backgroundColor: AppConstants.primaryColor,
                    textColor: AppConstants.whiteColor,
                    fontSize: 15.0,
                    text: 'Approve',
                    borderColor: AppConstants.primaryColor,
                    fontFamily: AppConstants.fontFamilyRoboto,
                    fontWeight: AppConstants.fontWeight500,
                    onPressed: () {},
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Row(
                      children: [
                        CommonElevatedButton(
                          elevation: 0,
                          hight: 48.0,
                          width: 159.0,
                          backgroundColor: AppConstants.whiteColor,
                          textColor: AppConstants.primaryColor,
                          fontSize: 16.0,
                          text: 'Reset Filters',
                          borderColor: AppConstants.primaryColor,
                          fontFamily: AppConstants.fontFamilyRoboto,
                          fontWeight: AppConstants.fontWeight500,
                          onPressed: () {},
                        ),
                        const SizedBox(width: 15),
                        CommonElevatedButton(
                          elevation: 0,
                          hight: 48.0,
                          width: 159.0,
                          backgroundColor: AppConstants.primaryColor,
                          textColor: AppConstants.whiteColor,
                          fontSize: 16.0,
                          text: 'Apply Filters',
                          borderColor: AppConstants.primaryColor,
                          fontFamily: AppConstants.fontFamilyRoboto,
                          fontWeight: AppConstants.fontWeight500,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Column(
                    children: [
                      CommonElevatedButton(
                        elevation: 0,
                        hight: 48.0,
                        width: 193.0,
                        backgroundColor: AppConstants.primaryColor,
                        textColor: AppConstants.whiteColor,
                        fontSize: 16.0,
                        text: 'Submit Recording',
                        borderColor: AppConstants.primaryColor,
                        fontFamily: AppConstants.fontFamilyRoboto,
                        fontWeight: AppConstants.fontWeight500,
                        onPressed: () {},
                      ),
                      const SizedBox(height: 15),
                      CommonElevatedButton(
                        elevation: 0,
                        hight: 48.0,
                        width: 193.0,
                        backgroundColor: AppConstants.whiteColor,
                        textColor: AppConstants.primaryColor,
                        fontSize: 16.0,
                        text: 'Cancel',
                        borderColor: AppConstants.primaryColor,
                        fontFamily: AppConstants.fontFamilyRoboto,
                        fontWeight: AppConstants.fontWeight500,
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Column(
                    children: [
                      CommonElevatedButton(
                        elevation: 0,
                        hight: 48.0,
                        width: 274.0,
                        backgroundColor: AppConstants.primaryColor,
                        textColor: AppConstants.whiteColor,
                        fontSize: 16.0,
                        text: 'Approve Summary',
                        borderColor: AppConstants.primaryColor,
                        fontFamily: AppConstants.fontFamilyRoboto,
                        fontWeight: AppConstants.fontWeight700,
                        onPressed: () {},
                      ),
                      const SizedBox(height: 15),
                      CommonElevatedButton(
                        elevation: 0,
                        hight: 48.0,
                        width: 274.0,
                        backgroundColor: AppConstants.whiteColor,
                        textColor: AppConstants.primaryColor,
                        fontSize: 16.0,
                        text: 'Reject Summary',
                        borderColor: AppConstants.primaryColor,
                        fontFamily: AppConstants.fontFamilyRoboto,
                        fontWeight: AppConstants.fontWeight700,
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  CommonElevatedButton(
                    elevation: 0,
                    hight: 48.0,
                    width: 326.0,
                    backgroundColor: AppConstants.whiteColor,
                    textColor: AppConstants.primaryColor,
                    fontSize: 16.0,
                    text: 'Go to Help',
                    borderColor: AppConstants.primaryColor,
                    fontFamily: AppConstants.fontFamilyRoboto,
                    fontWeight: AppConstants.fontWeight700,
                    onPressed: () {},
                  ),
                  const SizedBox(height: 15),
                  PatientCard(
                    title: 'Patient A',
                    dob: '10/03/1990',
                    gender: 'female',
                    address: 'Boca Raton Regional Hospital',
                    date: DateTime.now(),
                    time: DateTime.now(),
                    status: Status.noRecording,
                  ),
                  const SizedBox(height: 15),
                  PatientCard(
                    title: 'Patient A',
                    dob: '10/03/1990',
                    gender: 'female',
                    address: 'Boca Raton Regional Hospital',
                    date: DateTime.now(),
                    time: DateTime.now(),
                    status: Status.approved,
                  ),
                  const SizedBox(height: 15),
                  PatientCard(
                    title: 'Patient A',
                    dob: '10/03/1990',
                    gender: 'female',
                    address: 'Boca Raton Regional Hospital',
                    date: DateTime.now(),
                    time: DateTime.now(),
                    status: Status.rejected,
                  ),
                  const SizedBox(height: 15),
                  PatientCard(
                    title: 'Patient A',
                    dob: '10/03/1990',
                    gender: 'female',
                    address: 'Boca Raton Regional Hospital',
                    date: DateTime.now(),
                    time: DateTime.now(),
                    status: Status.pending,
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
