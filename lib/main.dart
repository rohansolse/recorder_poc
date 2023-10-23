import 'package:flutter/material.dart';
import 'package:recorder_poc/constants.dart';
import 'package:recorder_poc/generic_bottom_sheet_widget.dart';
import 'package:recorder_poc/menu_link_theme.dart';
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
    final links = getSpecialistAppointments(
      displaySpecialistAppointment: true,
      displayEndoAppointment: true,
      displayMammography: true,
    );
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Boilerplate Home'),
        ),
        body: ElevatedButton(
          onPressed: () {
            GenericBottomSheet.showGenericBottomSheet(
                context: context,
                genericBottomSheetModel: GenericBottomSheetModel(
                    title: 'scheduling__schedule_specialist',
                    key: ToolTipsKeys.SPECIALIST_BOTTOM_SHEET_TOOLTIP,
                    options: List.generate(links.length, (i) {
                      final subMenu = links[i];
                      return GenericBottomSheetOptionsModel(
                          isVisible: subMenu['isVisible'],
                          leadingIcon: subMenu['icon'],
                          title: subMenu['title'],
                          key: subMenu['key'],
                          onTap: () {
                            // switch (subMenu['key']) {
                            //   case ToolTipsKeys.SPECIALIST_TOOLTIP:
                            //     analytics.sendEvent(AnalyticsConstants.ORTHO_SPORT_MED, {
                            //       'screen': AnalyticsConstants.HOME_QUICK_LINKS,
                            //       'action': AnalyticsConstants.ORTHO_SPORT_MED_ACTION,
                            //     });
                            //     _checkOrthopedicConnectivity(context, true);
                            //     break;
                            //   case ToolTipsKeys.SPECIALIST_ENDOCRINOLOGY_TOOLTIP:
                            //     analytics.sendEvent(AnalyticsConstants.ENDO_MED, {
                            //       'screen': AnalyticsConstants.HOME_SCREEN_CROSS_POP_UP,
                            //       'action': AnalyticsConstants.ENDO_MED_ACTION,
                            //     });
                            //     _checkEndoConnectivity(context, userIsLogged);
                            //     break;
                            //   case ToolTipsKeys.MEMMOGRAPHY_TOOLTIP:
                            //     _navigateToMammoAppointment(userIsLogged, context, isSchedulingMammoEnabled);
                            //     break;
                            // }
                          });
                    }),
                    shouldHaveCloseIcon: true));
          },
          child: const Text("click here"),
        ));
  }
}

List<Map<String, dynamic>> getSpecialistAppointments({
  required bool displaySpecialistAppointment,
  required bool displayEndoAppointment,
  required bool displayMammography,
}) {
  return [
    {
      'icon': MenuLinksTheme.ORTHOPEDIC_SPORT_MEDICINE,
      'key': ToolTipsKeys.SPECIALIST_TOOLTIP,
      'link': Constants.ORTHOPEDIC_APPOINTMENT_PAGE,
      'hasSubMenu': false,
      'isMainMenu': false,
      'isExpand': false,
      'subMenu': [],
      'isVisible': displaySpecialistAppointment,
      'title': 'orthopedic_appointment__orthopedic_sport_medicine',
      'subtitle': 'orthopedic_appointment__schedule_orthopedic_appointment',
    },
    {
      'icon': MenuLinksTheme.ENDO,
      'key': ToolTipsKeys.SPECIALIST_ENDOCRINOLOGY_TOOLTIP,
      'link': Constants.ENDO,
      'hasSubMenu': false,
      'isMainMenu': false,
      'isExpand': false,
      'subMenu': [],
      'isVisible': displayEndoAppointment,
      'title': 'search__popular_searches_endocrinology',
      'subtitle': 'specialist_title_endocrinology_subtitle',
    },
  ];
}
