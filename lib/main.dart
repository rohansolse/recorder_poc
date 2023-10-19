import 'package:flutter/material.dart';
import 'package:recorder_poc/constants.dart';
import 'package:recorder_poc/status_enums.dart';
import 'package:recorder_poc/widgets/common_text_field.dart';
import 'package:recorder_poc/widgets/patient_card.dart';
import 'package:recorder_poc/widgets/common_text_button.dart';
import 'package:recorder_poc/widgets/common_elevated_button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late bool showPlayer = false;
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
                    iconLink: '',
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
                    iconLink: '',
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
                    iconLink: '',
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
                    iconLink: '',
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        CommonElevatedButton(
                          elevation: 0,
                          hight: 48.0,
                          width: 175.19,
                          backgroundColor: AppConstants.whiteColor,
                          textColor: showPlayer ? AppConstants.primaryColor : AppConstants.secondaryColor,
                          fontSize: 15.0,
                          text: 'Cancel Recording',
                          borderColor: showPlayer ? AppConstants.primaryColor : AppConstants.secondaryColor,
                          fontFamily: AppConstants.fontFamilyRoboto,
                          fontWeight: AppConstants.fontWeight500,
                          onPressed: showPlayer
                              ? () {
                                  setState(() {
                                    showPlayer = false;
                                  });
                                }
                              : () {},
                          iconLink: showPlayer ? 'assets/cancelActive.png' : 'assets/cancelInactive.png',
                        ),
                        const SizedBox(width: 10),
                        CommonElevatedButton(
                          elevation: 0,
                          hight: 48.0,
                          width: 175.19,
                          backgroundColor: showPlayer ? AppConstants.primaryColor : AppConstants.secondaryColor,
                          textColor: AppConstants.whiteColor,
                          fontSize: 15.0,
                          text: 'Submit Recording',
                          borderColor: showPlayer ? AppConstants.primaryColor : AppConstants.secondaryColor,
                          fontFamily: AppConstants.fontFamilyRoboto,
                          fontWeight: AppConstants.fontWeight500,
                          onPressed: showPlayer
                              ? () {
                                  // submitRecoringDialog();
                                }
                              : () {},
                          iconLink: 'assets/submit.png',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  const CommonTextField(
                    richText: 'Baptist Email Address',
                    textSpan: '*',
                    width: 350,
                    height: 48,
                    labelText: 'Ex: manolo@gmail.com',
                  ),
                  const CommonTextField(
                    richText: 'Password',
                    textSpan: '*',
                    width: 350,
                    height: 48,
                    labelText: '************',
                  ),
                  const CommonTextField(
                    richText: 'Patient Name',
                    textSpan: '',
                    width: 350,
                    height: 48,
                    labelText: '',
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        CommonElevatedButton(
                          elevation: 0,
                          hight: 48.0,
                          width: 175.19,
                          backgroundColor: AppConstants.whiteColor,
                          textColor: !showPlayer ? AppConstants.primaryColor : AppConstants.secondaryColor,
                          fontSize: 15.0,
                          text: 'Cancel Recording',
                          borderColor: !showPlayer ? AppConstants.primaryColor : AppConstants.secondaryColor,
                          fontFamily: AppConstants.fontFamilyRoboto,
                          fontWeight: AppConstants.fontWeight500,
                          onPressed: !showPlayer
                              ? () {
                                  setState(() {
                                    showPlayer = false;
                                  });
                                }
                              : () {},
                          iconLink: !showPlayer ? 'assets/cancelActive.png' : 'assets/cancelInactive.png',
                        ),
                        const SizedBox(width: 10),
                        CommonElevatedButton(
                          elevation: 0,
                          hight: 48.0,
                          width: 175.19,
                          backgroundColor: !showPlayer ? AppConstants.primaryColor : AppConstants.secondaryColor,
                          textColor: AppConstants.whiteColor,
                          fontSize: 15.0,
                          text: 'Submit Recording',
                          borderColor: !showPlayer ? AppConstants.primaryColor : AppConstants.secondaryColor,
                          fontFamily: AppConstants.fontFamilyRoboto,
                          fontWeight: AppConstants.fontWeight500,
                          onPressed: !showPlayer
                              ? () {
                                  // submitRecoringDialog();
                                }
                              : () {},
                          iconLink: 'assets/submit.png',
                        ),
                      ],
                    ),
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
                          iconLink: '',
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
                          iconLink: '',
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
                        iconLink: '',
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
                        iconLink: '',
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
                        iconLink: '',
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
                        iconLink: '',
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
                    iconLink: '',
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
