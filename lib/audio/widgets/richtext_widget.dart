import 'package:flutter/material.dart';
import 'package:recorder_poc/constants.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: RecorderConstants.thisWillGenerate,
        style: DefaultTextStyle.of(context).style,
        children: const <TextSpan>[
          TextSpan(
            text: RecorderConstants.visitSummaryDocument,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              fontFamily: RecorderConstants.fontFamilyRoboto,
            ),
          ),
        ],
      ),
    );
  }
}
