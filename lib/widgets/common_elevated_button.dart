import 'package:flutter/material.dart';

class CommonElevatedButton extends StatelessWidget {
  const CommonElevatedButton({
    super.key,
    required this.elevation,
    required this.width,
    required this.hight,
    required this.backgroundColor,
    required this.textColor,
    required this.fontSize,
    required this.text,
    required this.fontFamily,
    required this.fontWeight,
    required this.borderColor,
    required this.onPressed,
    required this.iconLink,
  });

  final double elevation;
  final double width;
  final double hight;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final double fontSize;
  final String text;
  final String iconLink;
  final String fontFamily;
  final FontWeight fontWeight;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
        backgroundColor: backgroundColor,
        minimumSize: Size(width, hight),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(color: borderColor, width: 2),
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
                  text,
                  style: TextStyle(
                    color: textColor,
                    fontSize: fontSize,
                    fontFamily: fontFamily,
                    fontWeight: fontWeight,
                  ),
                ),
              ],
            )
          : Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontFamily: fontFamily,
                fontWeight: fontWeight,
              ),
            ),
    );
  }
}
