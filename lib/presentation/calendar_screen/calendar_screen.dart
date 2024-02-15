import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/widgets/custom_bottom_bar.dart';

class CalendarScreen extends StatelessWidget {
  CalendarScreen({Key? key})
      : super(
          key: key,
        );

  List<DateTime?> selectedDatesFromCalendar1 = [];

  List<DateTime?> selectedDatesFromCalendar2 = [];

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 58.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 13.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgBradgoodLogo,
                                height: 33.v,
                                width: 122.h,
                                margin: EdgeInsets.symmetric(vertical: 5.v),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgScreenshot2023,
                                height: 43.v,
                                width: 49.h,
                                margin: EdgeInsets.only(left: 96.h),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 1046.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: 397.h,
                                  top: 23.v,
                                  right: 13.h,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 3.h,
                                  vertical: 1.v,
                                ),
                                decoration: AppDecoration.fillGray,
                                child: Container(
                                  height: 25.v,
                                  width: 8.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.gray40003,
                                    borderRadius: BorderRadius.circular(
                                      4.h,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgPlusGreenA200,
                              height: 80.v,
                              width: 75.h,
                              alignment: Alignment.bottomCenter,
                              margin: EdgeInsets.only(bottom: 237.v),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 1046.v,
                                width: double.maxFinite,
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: DottedBorder(
                                        color: appTheme.deepPurpleA200,
                                        padding: EdgeInsets.only(
                                          left: 1.h,
                                          top: 1.v,
                                          right: 1.h,
                                          bottom: 1.v,
                                        ),
                                        strokeWidth: 1.h,
                                        radius: Radius.circular(5),
                                        borderType: BorderType.RRect,
                                        dashPattern: [
                                          10,
                                          5,
                                        ],
                                        child: Container(
                                          height: 1046.v,
                                          width: double.maxFinite,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              5.h,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        height: 493.v,
                                        width: double.maxFinite,
                                        margin: EdgeInsets.only(top: 20.v),
                                        child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                height: 493.v,
                                                width: double.maxFinite,
                                                decoration: BoxDecoration(
                                                  color: theme.colorScheme
                                                      .onPrimaryContainer
                                                      .withOpacity(1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    16.h,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            _buildHeader(context),
                                            _buildProperty1Default(context),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 493.v,
                                        width: double.maxFinite,
                                        margin: EdgeInsets.only(bottom: 20.v),
                                        child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                height: 493.v,
                                                width: double.maxFinite,
                                                decoration: BoxDecoration(
                                                  color: theme.colorScheme
                                                      .onPrimaryContainer
                                                      .withOpacity(1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    16.h,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            _buildMonth(context),
                                            _buildDays(context),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          top: 28.v,
          bottom: 419.v,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 10.v,
                bottom: 5.v,
              ),
              child: Text(
                "May 2023",
                style: CustomTextStyles.headlineSmallBlack90001,
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgArrowLeftGray40002,
              height: 46.adaptSize,
              width: 46.adaptSize,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 46.adaptSize,
              width: 46.adaptSize,
              margin: EdgeInsets.only(left: 8.h),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProperty1Default(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 355.v,
        width: double.maxFinite,
        margin: EdgeInsets.only(bottom: 28.v),
        child: CalendarDatePicker2(
          config: CalendarDatePicker2Config(
            calendarType: CalendarDatePicker2Type.multi,
            firstDate: DateTime(DateTime.now().year - 5),
            lastDate: DateTime(DateTime.now().year + 5),
            firstDayOfWeek: 1,
            weekdayLabelTextStyle: TextStyle(
              color: appTheme.black90001,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
            selectedDayTextStyle: TextStyle(
              color: Color(0XFF000000),
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
            disabledDayTextStyle: TextStyle(
              color: appTheme.gray50004,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
            weekdayLabels: ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"],
          ),
          value: selectedDatesFromCalendar1,
          onValueChanged: (dates) {},
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMonth(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          top: 35.v,
          right: 9.h,
          bottom: 427.v,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "June 2023",
              style: CustomTextStyles.headlineSmallBlack90001,
            ),
            Spacer(
              flex: 85,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgFrame10,
              height: 14.adaptSize,
              width: 14.adaptSize,
              margin: EdgeInsets.only(
                top: 8.v,
                bottom: 7.v,
              ),
            ),
            Spacer(
              flex: 14,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgFrame10Gray40002,
              height: 14.adaptSize,
              width: 14.adaptSize,
              margin: EdgeInsets.only(
                top: 8.v,
                bottom: 7.v,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDays(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 28.v),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 166.v,
              width: double.maxFinite,
              child: CalendarDatePicker2(
                config: CalendarDatePicker2Config(
                  calendarType: CalendarDatePicker2Type.multi,
                  firstDate: DateTime(DateTime.now().year - 5),
                  lastDate: DateTime(DateTime.now().year + 5),
                  selectedDayHighlightColor: Color(0XFFF2F2F7),
                  firstDayOfWeek: 1,
                  weekdayLabelTextStyle: TextStyle(
                    color: appTheme.black90001,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                  selectedDayTextStyle: TextStyle(
                    color: Color(0XFFA7A7A7),
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                  disabledDayTextStyle: TextStyle(
                    color: appTheme.gray50004,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                  weekdayLabels: ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"],
                ),
                value: selectedDatesFromCalendar2,
                onValueChanged: (dates) {},
              ),
            ),
            _buildRow2(
              context,
              twentyTwo: "12",
              twentyThree: "13",
              twentyFour: "14",
              twentyFive: "15",
              twentySix: "16",
              twentySeven: "17",
              twentyEight: "18",
            ),
            _buildRow2(
              context,
              twentyTwo: "19",
              twentyThree: "20",
              twentyFour: "21",
              twentyFive: "22",
              twentySix: "23",
              twentySeven: "24",
              twentyEight: "25",
            ),
            _buildRow2(
              context,
              twentyTwo: "26",
              twentyThree: "27",
              twentyFour: "28",
              twentyFive: "29",
              twentySix: "30",
              twentySeven: "1",
              twentyEight: "2",
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }

  /// Common widget
  Widget _buildRow2(
    BuildContext context, {
    required String twentyTwo,
    required String twentyThree,
    required String twentyFour,
    required String twentyFive,
    required String twentySix,
    required String twentySeven,
    required String twentyEight,
  }) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 19.v,
            ),
            decoration: AppDecoration.outlineBlueGray,
            child: SizedBox(
              width: 24.adaptSize,
              child: Text(
                twentyTwo,
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: appTheme.black90001,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(19.h),
            decoration: AppDecoration.outlineBlueGray,
            child: SizedBox(
              width: 24.adaptSize,
              child: Text(
                twentyThree,
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: appTheme.black90001,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(19.h),
            decoration: AppDecoration.outlineBlueGray,
            child: SizedBox(
              width: 24.adaptSize,
              child: Text(
                twentyFour,
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: appTheme.black90001,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(19.h),
            decoration: AppDecoration.outlineBlueGray,
            child: SizedBox(
              width: 24.adaptSize,
              child: Text(
                twentyFive,
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: appTheme.black90001,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(19.h),
            decoration: AppDecoration.outlineBlueGray,
            child: SizedBox(
              width: 24.adaptSize,
              child: Text(
                twentySix,
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: appTheme.black90001,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(19.h),
            decoration: AppDecoration.outlineBlueGray,
            child: SizedBox(
              width: 24.adaptSize,
              child: Text(
                twentySeven,
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: appTheme.black90001,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(19.h),
            decoration: AppDecoration.outlineBlueGray,
            child: SizedBox(
              width: 24.adaptSize,
              child: Text(
                twentyEight,
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: appTheme.black90001,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
