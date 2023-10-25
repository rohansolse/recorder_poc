import 'package:flutter/material.dart';
import 'package:recorder_poc/constants.dart';
import 'package:recorder_poc/widgets/common_elevated_button.dart';
import 'package:recorder_poc/widgets/common_rich_text.dart';

class ShowDialogWidget extends StatelessWidget {
  const ShowDialogWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.titleText,
    required this.firstButtonText,
    required this.secondButtonText,
  });
  final String icon;
  final String text;
  final String titleText;
  final String firstButtonText;
  final String secondButtonText;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            const SizedBox(height: 30),
            Image.asset(
              icon,
              width: 65,
              height: 65,
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                titleText,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: AppConstants.fontFamilyArchivo,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 15,
                  fontFamily: AppConstants.fontFamilyRoboto,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Center(
              child: RichTextWidget(
                text: AppConstants.thisWillGenerate,
                textColor: AppConstants.areYouDoneColor,
                textFontFamily: AppConstants.fontFamilyRoboto,
                textFontSize: 15,
                textFontWeight: FontWeight.normal,
                textSpan: AppConstants.visitSummaryDocument,
                textSpanColor: AppConstants.areYouDoneColor,
                textSpanWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                CommonElevatedButton(
                  elevation: 0,
                  width: 193,
                  hight: 48,
                  text: firstButtonText,
                  backgroundColor: AppConstants.primaryColor,
                  borderColor: AppConstants.primaryColor,
                  textColor: AppConstants.whiteColor,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  fontFamily: AppConstants.fontFamilyRoboto,
                  fontSize: 16,
                  fontWeight: AppConstants.fontWeight700,
                  icon: '',
                ),
                const SizedBox(height: 10),
                CommonElevatedButton(
                  elevation: 0,
                  width: 193,
                  hight: 48,
                  text: secondButtonText,
                  backgroundColor: AppConstants.whiteColor,
                  borderColor: AppConstants.primaryColor,
                  textColor: AppConstants.primaryColor,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  fontFamily: AppConstants.fontFamilyRoboto,
                  fontSize: 16,
                  fontWeight: AppConstants.fontWeight700,
                  icon: '',
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
