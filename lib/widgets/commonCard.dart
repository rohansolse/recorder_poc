import 'package:flutter/material.dart';

Widget commonCard(
  title,
  dob,
  gender,
  address,
  date,
  time,
) {
  return Center(
    child: Card(
      elevation: 5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Image.asset('assets/avatar.png'),
            title: Text(title),
            subtitle: Text('$dob - $gender'),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            indent: 100,
            endIndent: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              children: [
                const Icon(
                  Icons.location_on,
                  size: 35,
                ),
                const SizedBox(width: 10),
                Text(address),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              children: [
                const Icon(
                  Icons.calendar_today_rounded,
                  size: 30,
                ),
                const SizedBox(width: 10),
                Text(date),
                const SizedBox(width: 20),
                const Icon(
                  Icons.watch_later_rounded,
                  size: 30,
                ),
                const SizedBox(width: 10),
                Text(time),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
