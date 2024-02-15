import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/widgets/app_bar/appbar_title_image.dart';
import 'package:nomi/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:nomi/widgets/app_bar/custom_app_bar.dart';
import 'package:nomi/widgets/custom_bottom_bar.dart';
import 'package:nomi/widgets/custom_icon_button.dart';
import 'package:nomi/widgets/custom_radio_button.dart';

class CurrentgoalsScreen extends StatelessWidget {
  CurrentgoalsScreen({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  String radioGroup1 = "";

  String radioGroup2 = "";

  String radioGroup3 = "";

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 13.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 19.v),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              "Current Goals",
                              style:
                                  CustomTextStyles.headlineSmallPoppinsBlack90001,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.v),
                        _buildCurrentGoals(context),
                        CustomImageView(
                          imagePath: ImageConstant.imgGoalPreview,
                          height: 44.v,
                          width: 358.h,
                          color: theme.colorScheme.primary,
                          radius: BorderRadius.circular(
                            12.h,
                          ),
                        ),
                        SizedBox(height: 28.v),
                        _buildCurrentGoals(context),
                        SizedBox(height: 10.v),
                        _buildCurrentGoals(context),
                        SizedBox(height: 30.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: Text(
                              "Completed Goals",
                              style:
                                  CustomTextStyles.headlineSmallPoppinsBlack90001,
                            ),
                          ),
                        ),
                        SizedBox(height: 7.v),
                        _buildCurrentGoals(context),
                        SizedBox(height: 50.v),
                      ],
                    ),
                  ),
                ),
                // Container(
                //   margin: EdgeInsets.only(
                //     left: 9.h,
                //     top: 16.v,
                //     bottom: 66.v,
                //   ),
                //   padding: EdgeInsets.symmetric(
                //     horizontal: 3.h,
                //     vertical: 1.v,
                //   ),
                //   decoration: AppDecoration.fillGray,
                //   child: Container(
                //     height: 25.v,
                //     width: 8.h,
                //     decoration: BoxDecoration(
                //       color: appTheme.gray40003,
                //       borderRadius: BorderRadius.circular(
                //         4.h,
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
        // bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgBradgoodLogo,
      ),
      actions: [
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgScreenshot2023,
          margin: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 6.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCurrentGoals(BuildContext context) {
    return SizedBox(
      height: 157.v,
      width: 358.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Align(
          //   alignment: Alignment.bottomLeft,
          //   child: Padding(
          //     padding: EdgeInsets.only(
          //       left: 27.h,
          //       bottom: 5.v,
          //     ),
          //     child: Text(
          //       "Quick Note",
          //       style: CustomTextStyles.headlineSmallOnPrimaryContainer,
          //     ),
          //   ),
          // ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 3.v,
              ),
              decoration: AppDecoration.outlineBlack90001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8.v),
                  _buildContinueVar(
                    context,
                    launchNomiText: "Launch Nomi",
                    createAppAndLaunchText: "Create App and Launch MVP",
                  ),
                  // SizedBox(height: 12.v),
                  Divider(
                    color: appTheme.gray300,
                    thickness: 2,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.alarm_sharp, color: Color(0xff6C757D),
                            )
                        ),
                        Text("Deadline", style: theme.textTheme.bodySmall,),
                        Text("12 Months", style: theme.textTheme.bodySmall),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildContinueVar(
    BuildContext context, {
    required String launchNomiText,
    required String createAppAndLaunchText,
  }) {
    return Row(
      children: [
        CustomIconButton(
          height: 53.adaptSize,
          width: 53.adaptSize,
          padding: EdgeInsets.all(6.h),
          decoration: IconButtonStyleHelper.fillOnPrimaryContainer,
          child: CustomImageView(
            imagePath: ImageConstant.imgCloseGreenA200,
            color: Color(0xff49EEB3),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 8.h,
            top: 4.v,
            bottom: 4.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                launchNomiText,
                style: CustomTextStyles.bodyLargeNunitoOnPrimary.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
              SizedBox(height: 3.v),
              Text(
                createAppAndLaunchText,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: appTheme.gray600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
