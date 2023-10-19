import 'package:flutter/material.dart';
import 'package:recorder_poc/constants.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
    required this.width,
    required this.text,
    required this.backgroundColor,
    required this.borderColor,
    required this.textColor,
    required this.onPressed,
  });

  final double width;
  final String text;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
            side: BorderSide(color: borderColor, width: 2),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: textColor,
            fontWeight: FontWeight.w700,
            fontFamily: RecorderConstants.fontFamilyRoboto,
          ),
        ),
      ),
    );
  }
}
