import 'package:flutter/material.dart';
import 'package:recorder_poc/generic_bottom_sheet_widget.dart';
import 'package:recorder_poc/pine_app_localization.dart';
import 'package:recorder_poc/tool_tips_keys.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Boilerplate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Boilerplate Home'),
      ),
      body: GenericBottomSheet.showGenericBottomSheet(
                context: context,
                genericBottomSheetModel: GenericBottomSheetModel(
                    title: 'scheduling__schedule_specialist',
                    key: links[index]['key'],
                    options: List.generate(links[index]['subMenu'].length, (i) {
                      final subMenu = links[index]['subMenu'][i];
                      return GenericBottomSheetOptionsModel(
                          isVisible: subMenu['isVisible'],
                          leadingIcon: subMenu['icon'],
                          key: subMenu['key'],
                          title: _setTitle(subMenu['key'], pineAppLang),
                          subtitle: _setSubTitle(subMenu['key'], pineAppLang),
                          onTap: () {
                            switch (subMenu['key']) {
                              case ToolTipsKeys.SPECIALIST_TOOLTIP:
                                analytics.sendEvent(
                                    AnalyticsConstants.ORTHO_SPORT_MED, {
                                  'screen': AnalyticsConstants.HOME_QUICK_LINKS,
                                  'action':
                                      AnalyticsConstants.ORTHO_SPORT_MED_ACTION,
                                });
                                _checkOrthopedicConnectivity(context);
                                break;
                              case ToolTipsKeys
                                    .SPECIALIST_ENDOCRINOLOGY_TOOLTIP:
                                analytics
                                    .sendEvent(AnalyticsConstants.ENDO_MED, {
                                  'screen': AnalyticsConstants.HOME_QUICK_LINKS,
                                  'action': AnalyticsConstants.ENDO_MED_ACTION,
                                });
                                _checkEndocrinologyConnectivity(context);
                                break;
                              case ToolTipsKeys.MEMMOGRAPHY_TOOLTIP:
                                _navigateToMammo(context: context);
                                break;
                            }
                          });
                    }),
                    shouldHaveCloseIcon: true));
    );
  }
}

String _setTitle(String key, PineAppLocalization lang) {
    String title = '';
    switch (key) {
      case ToolTipsKeys.CARE_GUIDE_TOOLTIP:
        title = lang.localized('care_guidence__entry_button');
        break;
      case ToolTipsKeys.MENU_LINKS_BOOK_A_VISIT:
        title =
            lang.localized('pcp_appointment_scheduling__schedule_appointment');
        break;
      case ToolTipsKeys.PRIMARY_CARE_TOOLTIP:
        title = lang.localized(
            'pcp_appointment_scheduling__primary_care_provider_menu_links');
        break;
      case ToolTipsKeys.DIAGNOSTIC_REFERRAL_TOOLTIP:
        title = lang.localized('diagnostic_appointment__diagnostic_referral');
        break;
      case ToolTipsKeys.SPECIALIST_TOOLTIP:
        title =
            lang.localized('orthopedic_appointment__orthopedic_sport_medicine');
        break;
      case ToolTipsKeys.MEMMOGRAPHY_TOOLTIP:
        title = lang.localized('scheduling__schedule_mammogram_screening');
        break;
      case ToolTipsKeys.VIDEO_VISIT_TOOLTIP:
        title = lang.localized('urgent_care_online_entry_button');
        break;
      case ToolTipsKeys.RENEW_MY_PRESCRIPTION_TOOLTIP:
        title = lang.localized('renew_my_prescription');
        break;
      case ToolTipsKeys.PAY_MY_BILL_TOOLTIP:
        title = lang.localized('pay_my_bill');
        break;
      case ToolTipsKeys.SPECIALIST_BOTTOM_SHEET_TOOLTIP:
        title = lang.localized('scheduling__schedule_specialist');
        break;
      case ToolTipsKeys.SPECIALIST_ENDOCRINOLOGY_TOOLTIP:
        title = lang.localized('search__popular_searches_endocrinology');
        break;
      default:
        title = '';
    }
    return title;
  }

  String _setSubTitle(String key, PineAppLocalization lang) {
    String title = '';
    switch (key) {
      case ToolTipsKeys.CARE_GUIDE_TOOLTIP:
        title = '';
        break;
      case ToolTipsKeys.MENU_LINKS_BOOK_A_VISIT:
        title = '';
        break;
      case ToolTipsKeys.PRIMARY_CARE_TOOLTIP:
        title = '';
        break;
      case ToolTipsKeys.DIAGNOSTIC_REFERRAL_TOOLTIP:
        title = '';
        break;
      case ToolTipsKeys.SPECIALIST_TOOLTIP:
        title = 'orthopedic_appointment__schedule_orthopedic_appointment';
        break;
      case ToolTipsKeys.MEMMOGRAPHY_TOOLTIP:
        title = '';
        break;
      case ToolTipsKeys.VIDEO_VISIT_TOOLTIP:
        title = lang.localized('care_on_demand__title_quick_menu');
        ;
        break;
      case ToolTipsKeys.RENEW_MY_PRESCRIPTION_TOOLTIP:
        title = '';
        break;
      case ToolTipsKeys.PAY_MY_BILL_TOOLTIP:
        title = '';
        break;
      case ToolTipsKeys.SPECIALIST_ENDOCRINOLOGY_TOOLTIP:
        title = 'specialist_title_endocrinology_subtitle';
        break;
      default:
        title = '';
    }
    return title;
  }