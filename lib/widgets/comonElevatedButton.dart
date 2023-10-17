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
  });

  final double width;
  final double hight;
  final Color backgroundColor;
  final Color textColor;
  final double fontSize;
  final String text;
  final String fontFamily;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
        backgroundColor: backgroundColor,
        minimumSize: Size(width, hight),
        textStyle: TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      onPressed: () {},
      child: Text(text),
    );
  }
}
