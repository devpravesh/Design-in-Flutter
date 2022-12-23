import 'package:flutter/material.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:project/Colors/colors.dart';
import 'package:table_calendar/table_calendar.dart';
// ignore: depend_on_referenced_packages
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 90,
      child: CalendarWeek(
        backgroundColor: Colors.transparent,
        decorations: [
          DecorationItem(
              decorationAlignment: FractionalOffset.bottomCenter,
              date: DateTime.now(),
              decoration: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(
                  Icons.circle,
                  color: Appcolor.color2,
                ),
              )),
        ],
        pressedDateBackgroundColor: Colors.black12,
        weekendsStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        dayOfWeekStyle: TextStyle(color: Colors.black38),
        showMonth: false,
        todayBackgroundColor: Colors.transparent,
        todayDateStyle:
            TextStyle(color: Appcolor.color2, fontWeight: FontWeight.bold),
        dateStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
