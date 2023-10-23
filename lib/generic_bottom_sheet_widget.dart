import 'package:flutter/material.dart';
import 'package:recorder_poc/generic_bottom_sheet_theme.dart';
import 'package:recorder_poc/line_separator_widget.dart';
import 'package:recorder_poc/list_tile.dart';
import 'package:recorder_poc/pine_app_localization.dart';
import 'package:recorder_poc/pine_palette.dart';
import 'package:recorder_poc/text.dart';
import 'package:recorder_poc/text_theme.dart';

class GenericBottomSheet extends StatelessWidget {
  static String route = 'genericBottomSheet';
  final GenericBottomSheetModel genericBottomSheetModel;
  const GenericBottomSheet({super.key, required this.genericBottomSheetModel});

  static showGenericBottomSheet({required BuildContext context, required GenericBottomSheetModel genericBottomSheetModel}) {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: PinePalette.white,
      shape: GenericBottomSheetTheme.BORDER_RADIUS_DIALOG,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return GenericBottomSheet(
          genericBottomSheetModel: genericBottomSheetModel,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final _lang = PineAppLocalization.of(context);
    genericBottomSheetModel.options.removeWhere((element) => element.isVisible == false);
    return SafeArea(
        key: GenericBottomSheetTheme.BOTTOM_SHEET_KEY,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: GenericBottomSheetTheme.SUB_SHEET_TITLE_PADDING,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PineText(
                    text: _lang.localized('${genericBottomSheetModel.title}'),
                    textType: PineTextTypes.HEADING,
                  ),
                  genericBottomSheetModel.shouldHaveCloseIcon
                      ? Container(
                          decoration: GenericBottomSheetTheme.CROSS_ICON_DECORATION,
                          child: IconButton(
                            icon: const Icon(
                              Icons.close,
                              size: GenericBottomSheetTheme.CROSS_ICON_SIZE,
                              color: PinePalette.lightGreenNew,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        )
                      : const SizedBox.shrink()
                ],
              ),
            ),
            ListView.separated(
              key: Key('bottom-sheet-specialist-${genericBottomSheetModel.title}'),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: GenericBottomSheetTheme.LISTVIEW_PADDING,
              itemCount: genericBottomSheetModel.options.length,
              separatorBuilder: (BuildContext context, _) {
                return const LineSeparatorWidget(
                  height: GenericBottomSheetTheme.LINE_SEPARATOR_HEIGHT,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                final options = genericBottomSheetModel.options[index];
                if (!options.isVisible) {
                  return const SizedBox.shrink();
                }
                return PineListTile(
                  key: Key('${options.key}'),
                  icon: options.leadingIcon,
                  title: _lang.localized('${options.title}'),
                  subTitle: _lang.localized('${options.subtitle}'),
                  trailingIcon: options.trailingIcon,
                  onTap: options.onTap,
                  hasSeparator: true,
                );
              },
            ),
          ],
        ));
  }
}

class GenericBottomSheetModel {
  final String title;
  final String key;
  final List<GenericBottomSheetOptionsModel> options;
  final bool shouldHaveCloseIcon;

  GenericBottomSheetModel({required this.title, required this.options, required this.key, required this.shouldHaveCloseIcon});
}

class GenericBottomSheetOptionsModel {
  final String? leadingIcon;
  final String? key;
  final String? trailingIcon;
  final String title;
  final bool isVisible;
  final String? subtitle;
  final GestureTapCallback onTap;

  GenericBottomSheetOptionsModel(
      {this.leadingIcon, this.trailingIcon, required this.title, required this.key, required this.isVisible, this.subtitle, required this.onTap});
}
