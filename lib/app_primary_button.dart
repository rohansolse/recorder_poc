import 'package:flutter/material.dart';
import 'package:recorder_poc/app_color.dart';
import 'package:recorder_poc/text.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final Color? color;
  final Color? titleColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Function() onTap;
  final double? width;
  final BorderSide? borderSide;
  final double? height;
  const PrimaryButton({
    super.key,
    required this.title,
    this.color,
    this.padding,
    this.borderSide,
    this.titleColor,
    this.margin,
    required this.onTap,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? 50,
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 10),
      margin: margin,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColor.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
            side: borderSide ?? BorderSide.none,
          ),
        ),
        child: Container(
          padding: padding ??
              const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 15,
              ),
          child: PText(
            title,
            textAlign: TextAlign.center,
            type: TextSize.h6,
            weight: FontWeightEnum.bold,
            color: titleColor ?? AppColor.textWhite,
          ),
        ),
      ),
    );
  }
}
