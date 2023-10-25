import 'package:flutter/material.dart';
import 'package:recorder_poc/app_color.dart';
import 'package:recorder_poc/app_primary_button.dart';
import 'package:recorder_poc/audio/widgets/dialog_box/app_dialog_box_theme.dart';
import 'package:recorder_poc/text.dart';

class AppDialogBox extends StatelessWidget {
  final String title;
  final String text;
  final String icon;
  final bool richText;
  final String? richtextTitle;
  final String? textSpan;
  final String approveButtonText;
  final String cancelButtonText;
  final Function() onTap;
  const AppDialogBox({
    super.key,
    required this.title,
    required this.text,
    required this.icon,
    required this.approveButtonText,
    required this.cancelButtonText,
    required this.onTap,
    required this.richText,
    this.richtextTitle,
    this.textSpan,
  });

  static void showAppDialogBox({
    required BuildContext context,
    required String title,
    required String text,
    required String icon,
    required bool richText,
    String? richtextTitle,
    String? textSpan,
    required String approveButtonText,
    required String cancelButtonText,
    required Function() onTap,
  }) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AppDialogBox(
          title: title,
          text: text,
          icon: icon,
          onTap: onTap,
          richtextTitle: richtextTitle,
          textSpan: textSpan,
          richText: richText,
          approveButtonText: approveButtonText,
          cancelButtonText: cancelButtonText,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColor.appBgColor,
      shape: RoundedRectangleBorder(
        borderRadius: AppDialogBoxTheme.dialogBorderRadius,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 35),
              Image.asset(
                icon,
                width: 65,
                height: 65,
              ),
              const SizedBox(height: 30),
              Center(
                child: PText(
                  title,
                  color: AppColor.dialogTitle,
                  type: TextSize.h3,
                  weight: FontWeightEnum.w700,
                  fontFamily: FontFamilyEnum.archivo,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: PText(
                  text,
                  color: AppColor.textPrimaryColor,
                  textAlign: TextAlign.center,
                  type: TextSize.PBase,
                  fontFamily: FontFamilyEnum.roboto,
                ),
              ),
              if (richText)
                Center(
                  child: PText(
                    richtextTitle ?? '',
                    type: TextSize.PBase,
                    richText: richText,
                    textSpan: textSpan,
                  ),
                ),
              const SizedBox(height: 30),
              PrimaryButton(
                title: approveButtonText,
                onTap: onTap,
              ),
              const SizedBox(height: 10),
              PrimaryButton(
                title: cancelButtonText,
                onTap: () {
                  Navigator.pop(context);
                },
                titleColor: AppColor.primaryColor,
                color: AppColor.appBgColor,
                borderSide: AppDialogBoxTheme.submitRecordingBorder,
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
