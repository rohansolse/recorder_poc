import 'package:flutter/material.dart';

class ElevatedButtonWithIcon extends StatelessWidget {
  const ElevatedButtonWithIcon({
    super.key,
    required this.backgroundColor,
    required this.borderColor,
    required this.buttonText,
    required this.buttonColor,
    required this.onPressed,
    required this.iconLink,
    required this.fontSize,
    required this.fontFamily,
    required this.fontWeight,
  });

  final Color backgroundColor;
  final Color borderColor;
  final String buttonText;
  final String iconLink;
  final Color buttonColor;
  final double fontSize;
  final String fontFamily;
  final FontWeight fontWeight;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: backgroundColor,
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
          side: BorderSide(color: borderColor, width: 1),
        ),
      ),
      child: iconLink.isNotEmpty
          ? Row(
              children: [
                Image.asset(
                  iconLink,
                  height: 20,
                  width: 20,
                ),
                const SizedBox(width: 3),
                Text(
                  buttonText,
                  style: TextStyle(
                    color: buttonColor,
                    fontSize: fontSize,
                    fontFamily: fontFamily,
                    fontWeight: fontWeight,
                  ),
                ),
              ],
            )
          : Text(
              buttonText,
              style: TextStyle(
                color: buttonColor,
                fontSize: fontSize,
                fontFamily: fontFamily,
                fontWeight: fontWeight,
              ),
            ),
    );
  }
}
