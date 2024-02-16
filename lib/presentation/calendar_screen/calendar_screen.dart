import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nomi/core/app_export.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class CalendarScreen extends StatefulWidget {
  CalendarScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);

    CalendarFormat format = CalendarFormat.month;
    DateTime selectedDay = DateTime.now();
    DateTime focusedDay = DateTime.now();
    String formatedDate = '';

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TableCalendar(
              focusedDay: selectedDay,
              firstDay: DateTime(1990),
              lastDay: DateTime(2050),

              //changing calendar format
              calendarFormat: format,
              onFormatChanged: (CalendarFormat _format) {
                setState(() {
                  format = _format;
                });
              },
              startingDayOfWeek: StartingDayOfWeek.monday,
              daysOfWeekVisible: true,
              //Day Changed on select
              onDaySelected: (DateTime selectDay, DateTime focusDay) {
                setState(() {
                  selectedDay = selectDay;
                  focusedDay = focusDay;
                  formatedDate = DateFormat('yyyy-MM-dd').format(selectedDay);
                });
                print(formatedDate);
              },
              selectedDayPredicate: (DateTime date) {
                return isSameDay(selectedDay, date);
              },
              calendarStyle: CalendarStyle(
                isTodayHighlighted: true,
                selectedDecoration: BoxDecoration(
                  color: Color(0xff49EEB3),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Colors.grey.shade400,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                selectedTextStyle: TextStyle(color: Colors.white),
                todayDecoration: BoxDecoration(
                  color: Color(0xffA5BAEF),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                defaultDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                weekendDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              headerStyle: HeaderStyle(
                formatButtonVisible: true,
                titleCentered: true,
                formatButtonShowsNext: false,
                formatButtonDecoration: BoxDecoration(
                  color: Color(0xff49EEB3),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                formatButtonTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onDaySelected(DateTime day, DateTime focusDay) {
    setState(() {
      today = day;
    });
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 77.h,
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgBradgoodLogo,
      ),
      height: 70,
      actions: [
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgScreenshot2023,
          margin: EdgeInsets.fromLTRB(13.h, 6.v, 13.h, 7.v),
        ),
      ],
    );
  }
}
