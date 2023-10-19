import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:recorder_poc/constants.dart';
import 'package:recorder_poc/status_enums.dart';

class PatientCard extends StatelessWidget {
  const PatientCard({
    super.key,
    required this.title,
    required this.dob,
    required this.gender,
    required this.address,
    required this.date,
    required this.time,
    required this.status,
  });

  final String title;
  final String dob;
  final String gender;
  final String address;
  final DateTime date;
  final DateTime time;
  final Enum status;

  @override
  Widget build(BuildContext context) {
    StatusInfo statusInfo = statusMap[status]!;
    return Container(
      width: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            offset: Offset(0, 0),
            blurRadius: 20,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 62,
                height: 62,
                margin: const EdgeInsets.only(
                  left: 16.0,
                  top: 16,
                ),
                child: Image.asset('assets/avatar.png'),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        title,
                        style: const TextStyle(
                          color: AppConstants.titleColor,
                          fontFamily: AppConstants.fontFamilyArchivo,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          height: 2.5,
                        ),
                      ),
                      subtitle: Text(
                        '$dob - $gender',
                        style: const TextStyle(
                          color: AppConstants.dobColor,
                          fontFamily: AppConstants.fontFamilyRoboto,
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          height: 2,
                        ),
                      ),
                      trailing: PopupMenuButton(
                        color: AppConstants.primaryColor,
                        itemBuilder: (BuildContext context) {
                          return [
                            const PopupMenuItem(
                              child: Text('Option 1'),
                            ),
                            const PopupMenuItem(
                              child: Text('Option 2'),
                            ),
                          ];
                        },
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      color: AppConstants.dividerColor,
                      indent: 15,
                      endIndent: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/map.png',
                      width: 14,
                      height: 18,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      address,
                      style: const TextStyle(
                        color: AppConstants.contentColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/calendar.png',
                      height: 14,
                      width: 14,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      DateFormat("EEEEE, dd MMMM").format(date),
                      style: const TextStyle(
                        color: AppConstants.contentColor,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Image.asset(
                      'assets/clock.png',
                      height: 14,
                      width: 14,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      DateFormat("hh:mm a").format(time),
                      style: const TextStyle(
                        color: AppConstants.contentColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Container(
            width: double.infinity,
            height: 30,
            decoration: BoxDecoration(
              color: statusInfo.bgColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),
            child: Center(
              child: Text(
                statusInfo.text,
                style: TextStyle(
                  color: statusInfo.textColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppConstants.fontFamilyRoboto,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
