import 'package:flutter/material.dart';

class CommonElevatedButton extends StatelessWidget {
  const CommonElevatedButton({
    super.key,
    required this.width,
    required this.hight,
    required this.backgroundColor,
    required this.textColor,
    required this.fontSize,
    required this.text,
    required this.fontFamily,
    required this.fontWeight,
    required this.borderColor,
  });

  final double width;
  final double hight;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final double fontSize;
  final String text;
  final String fontFamily;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
        backgroundColor: backgroundColor,
        minimumSize: Size(width, hight),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(color: borderColor, width: 2),
        ),
      ),
      onPressed: () {},
      child: Text(
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
