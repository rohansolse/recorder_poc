import 'package:flutter/material.dart';
import 'package:recorder_poc/pine_theme.dart';
import 'package:recorder_poc/text_theme.dart';

class PineText extends StatelessWidget {
  PineText({
    Key? key,
    required this.text,
    this.type = PineThemeTypes.COMMON,
    this.textAlign = TextAlign.start,
    this.maxLines,
    this.overflow,
    this.textType = PineTextTypes.PARAGRAPH,
    this.lineHeight = PineTextLineHeight.SMALL,
    this.textHeightBehavior,
  }) : super(key: key);
  final String text;
  final int? maxLines;
  final TextOverflow? overflow;
  final PineThemeTypes type;
  final TextAlign textAlign;
  final PineTextTypes textType;
  final PineTextLineHeight lineHeight;
  final TextHeightBehavior? textHeightBehavior;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      style: PineTextTheme.getStyle(
        type: type,
        textType: textType,
        lineHeight: lineHeight,
      ),
      textHeightBehavior: textHeightBehavior,
    );
  }
}
