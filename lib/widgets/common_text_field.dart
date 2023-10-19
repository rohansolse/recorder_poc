import 'package:flutter/material.dart';
import 'package:recorder_poc/constants.dart';
import 'package:recorder_poc/widgets/common_rich_text.dart';

class CommonTextField extends StatefulWidget {
  const CommonTextField({
    super.key,
    required this.richText,
    required this.textSpan,
    required this.width,
    required this.height,
    required this.labelText,
  });
  final String richText;
  final String textSpan;
  final String labelText;
  final double width;
  final double height;

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichTextWidget(
            text: widget.richText,
            textSpan: widget.textSpan,
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: widget.height,
            width: widget.width,
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: widget.labelText,
                labelStyle: const TextStyle(
                  color: AppConstants.labelTextColor,
                  fontFamily: AppConstants.fontFamilyRoboto,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: AppConstants.textFieldColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
