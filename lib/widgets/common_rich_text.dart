import 'package:flutter/material.dart';
import 'package:recorder_poc/constants.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({
    super.key,
    required this.text,
    required this.textSpan,
  });

  final String text;
  final String textSpan;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontFamily: AppConstants.fontFamilyRoboto,
          fontSize: 16.0,
        ),
        children: [
          TextSpan(
            text: textSpan,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: AppConstants.rejectedTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
