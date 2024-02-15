import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:nomi/widgets/app_bar/appbar_title_image.dart';
import 'package:nomi/widgets/app_bar/appbar_trailing_image.dart';
import 'package:nomi/widgets/app_bar/custom_app_bar.dart';

class HomescreenthreeScreen extends StatelessWidget {
  HomescreenthreeScreen({Key? key})
      : super(
          key: key,
        );

  List<DateTime?> selectedDatesFromCalendar1 = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 25.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 35.h,
                    right: 7.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 13.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 11.h),
                                child: Text(
                                  "Todays Agenda",
                                  style: theme.textTheme.headlineSmall,
                                ),
                              ),
                              SizedBox(height: 2.v),
                              _buildTodaysAgendaDescription(context),
                              SizedBox(height: 16.v),
                              Padding(
                                padding: EdgeInsets.only(left: 11.h),
                                child: Text(
                                  "Goals",
                                  style: theme.textTheme.headlineSmall,
                                ),
                              ),
                              SizedBox(height: 2.v),
                              _buildTodaysAgendaDescription(context),
                              SizedBox(height: 16.v),
                              Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "Recent Notes",
                                  style: theme.textTheme.headlineSmall,
                                ),
                              ),
                              SizedBox(height: 4.v),
                              _buildRecentNotes(context),
                              SizedBox(height: 20.v),
                              Text(
                                "Daily Memories",
                                style: theme.textTheme.headlineSmall,
                              ),
                              _buildRecentNotes(context),
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
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 71.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgScreenshot2023,
        margin: EdgeInsets.only(
          left: 22.h,
          top: 6.v,
          bottom: 6.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgBradgoodLogo,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgWpfCoins,
          margin: EdgeInsets.fromLTRB(25.h, 15.v, 25.h, 14.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTodaysAgendaDescription(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 9.h),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 194.h,
            margin: EdgeInsets.only(
              left: 14.h,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("• Compete front end of Nomi",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
                Text("• Dinner tonight with Hannah",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
                Text("• Write about your day today",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
                Text("• Meet with John",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
                Text("• Write about your day today",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),

              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 59.h,
              top: 6.v,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "2pm",
                  style: CustomTextStyles.bodyMediumGray40001,
                ),
                Text(
                  "2pm",
                  style: CustomTextStyles.bodyMediumGray40001,
                ),
                Text(
                  "2pm",
                  style: CustomTextStyles.bodyMediumGray40001,
                ),
                Text(
                  "2pm",
                  style: CustomTextStyles.bodyMediumGray40001,
                ),
                Text(
                  "2pm",
                  style: CustomTextStyles.bodyMediumGray40001,
                ),
                // SizedBox(
                //   height: 28.v,
                //   width: 31.h,
                //   child: Stack(
                //     alignment: Alignment.bottomCenter,
                //     children: [
                //       Align(
                //         alignment: Alignment.topLeft,
                //         child: Text(
                //           "4pm",
                //           style: CustomTextStyles.bodyMediumGray40001,
                //         ),
                //       ),
                //       Align(
                //         alignment: Alignment.bottomCenter,
                //         child: Text(
                //           "6pm",
                //           style: CustomTextStyles.bodyMediumGray40001,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: 33.v,
                //   width: 36.h,
                //   child: Stack(
                //     alignment: Alignment.bottomCenter,
                //     children: [
                //       Align(
                //         alignment: Alignment.topRight,
                //         child: Text(
                //           "8pm",
                //           style: CustomTextStyles.bodyMediumGray40001,
                //         ),
                //       ),
                //       Align(
                //         alignment: Alignment.bottomCenter,
                //         child: Text(
                //           "10pm",
                //           style: CustomTextStyles.bodyMediumGray40001,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGoals(BuildContext context) {
    return Container(
      height: 141.v,
      width: 344.h,
      margin: EdgeInsets.only(left: 11.h),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Goals",
              style: theme.textTheme.headlineSmall,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 19.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 9.v),
                  Padding(
                    padding: EdgeInsets.only(left: 13.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 176.h,
                          margin: EdgeInsets.only(top: 1.v),
                          child: Text(
                            "Get a raise at work\nHave 20,000 in savings\nHave a family \nStart a business",
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 29.h,
                            bottom: 29.v,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "52 days left",
                                  style: CustomTextStyles.bodyMediumGray40001,
                                ),
                              ),
                              SizedBox(height: 3.v),
                              Text(
                                "320 days left",
                                style: CustomTextStyles.bodyMediumGray40001,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Continue",
                    style: CustomTextStyles.titleMediumOnPrimaryContainer,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentNotes(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 9.h),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8.v),
          Container(
            width: 304.h,
            margin: EdgeInsets.only(left: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  // width: MediaQuery.of(context).size.width*0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                        margin: EdgeInsets.only(bottom: 5.v),
                        decoration: BoxDecoration(
                          color: appTheme.gray100,
                          borderRadius: BorderRadius.circular(
                            16.h,
                          ),
                        ),
                      ),
                      Container(
                        width: 166.h,
                        margin: EdgeInsets.only(left: 17.h),
                        child: Text(
                          "John wanted to go to the movies on friday.",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "8m ago",
                  style: CustomTextStyles.bodyMediumGray40001,
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          Container(
            width: 304.h,
            margin: EdgeInsets.only(left: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  // width: MediaQuery.of(context).size.width*0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                        margin: EdgeInsets.only(bottom: 5.v),
                        decoration: BoxDecoration(
                          color: appTheme.gray100,
                          borderRadius: BorderRadius.circular(
                            16.h,
                          ),
                        ),
                      ),
                      Container(
                        width: 166.h,
                        margin: EdgeInsets.only(left: 17.h),
                        child: Text(
                          "John wanted to go to the movies on friday.",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "8m ago",
                  style: CustomTextStyles.bodyMediumGray40001,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDailyMemories(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 9.h),
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 32.adaptSize,
            width: 32.adaptSize,
            margin: EdgeInsets.only(bottom: 52.v),
            decoration: BoxDecoration(
              color: appTheme.gray100,
              borderRadius: BorderRadius.circular(
                16.h,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: 243.h,
              margin: EdgeInsets.only(
                left: 18.h,
                right: 4.h,
                bottom: 29.v,
              ),
              child: Text(
                "This day last year you were on vacation in the Bahamas. Rediscover this memory here.",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 22.h,
          right: 177.h,
          bottom: 16.v,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgHome,
              height: 42.adaptSize,
              width: 42.adaptSize,
              margin: EdgeInsets.only(
                top: 44.v,
                bottom: 3.v,
              ),
            ),
            Spacer(
              flex: 53,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVector,
              height: 42.v,
              width: 36.h,
              margin: EdgeInsets.only(top: 47.v),
            ),
            Spacer(
              flex: 46,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgPlusGreenA200,
              height: 80.v,
              width: 75.h,
              margin: EdgeInsets.only(bottom: 9.v),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMdi(BuildContext context) {
    return SizedBox(
      height: 105.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle1,
            height: 77.v,
            width: 428.h,
            alignment: Alignment.bottomCenter,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                right: 15.h,
                bottom: 18.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 40.v,
                    width: 41.h,
                    margin: EdgeInsets.only(top: 6.v),
                    child: CalendarDatePicker2(
                      config: CalendarDatePicker2Config(
                        calendarType: CalendarDatePicker2Type.single,
                        firstDate: DateTime(DateTime.now().year - 5),
                        lastDate: DateTime(DateTime.now().year + 5),
                        firstDayOfWeek: 0,
                      ),
                      value: selectedDatesFromCalendar1,
                      onValueChanged: (dates) {},
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGgProfile,
                    height: 45.adaptSize,
                    width: 45.adaptSize,
                    margin: EdgeInsets.only(left: 37.h),
                  ),
                ],
              ),
            ),
          ),
          _buildHome(context),
        ],
      ),
    );
  }
}
