import 'package:flutter/material.dart';
import 'package:recorder_poc/icon.dart';
import 'package:recorder_poc/list_tile_theme.dart';
import 'package:recorder_poc/pine_theme.dart';

class PineListTile extends StatelessWidget {
  final String? icon;
  final String title;
  final String subTitle;
  final GestureTapCallback? onTap;
  final bool hasSeparator;
  final TextStyle? titleTextStyle;
  final TextStyle? subTitleTextStyle;
  final String? trailingIcon;

  const PineListTile(
      {Key? key,
      required this.icon,
      required this.title,
      required this.subTitle,
      required this.onTap,
      this.hasSeparator = false,
      this.titleTextStyle,
      this.subTitleTextStyle,
      this.trailingIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          icon != null
              ? CircleAvatar(
                  radius: PineListTileTheme.CIRCLE_AVATAR_RADIUS,
                  backgroundColor: PineTheme.colors.common.icon,
                  child: PineIcon(
                    icon: icon!,
                  ),
                )
              : const SizedBox.shrink(),
          icon != null
              ? const SizedBox(
                  width: 12.0,
                )
              : SizedBox.shrink(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  title,
                  style: titleTextStyle ?? PineListTileTheme.TITLE_STYLE,
                ),
                if (hasSeparator)
                  const SizedBox(
                    height: 3.0,
                  ),
                if (subTitle.isNotEmpty)
                  Text(
                    subTitle,
                    style: subTitleTextStyle ?? PineListTileTheme.SUB_TITLE_STYLE,
                  )
              ],
            ),
          ),
          trailingIcon != null
              ? PineIcon(
                  icon: trailingIcon!,
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
