import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/widgets/app_bar/appbar_subtitle.dart';
import 'package:nomi/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:nomi/widgets/app_bar/custom_app_bar.dart';
import 'package:nomi/widgets/custom_bottom_bar.dart';
import 'package:nomi/widgets/custom_floating_text_field.dart';
import 'package:nomi/widgets/custom_icon_button.dart';
import 'package:nomi/widgets/custom_radio_button.dart';

class NewgoalsScreen extends StatelessWidget {
  NewgoalsScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController goalDescriptionController = TextEditingController();

  String radioGroup = "";

  TextEditingController milestoneCounterController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: 426.h,
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 39.v),
              Padding(
                padding: EdgeInsets.only(right: 36.h),
                child: _buildFrame(
                  context,
                  reminderText: "Goal Title",
                  frequencyText: "Launch Nomi",
                ),
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(right: 36.h),
                child: _buildFrame(
                  context,
                  reminderText: "Goal Description",
                  frequencyText: "Create app and Launch the MVP",
                ),
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(right: 36.h),
                child: _buildFrame(
                  context,
                  reminderText: "Reminder",
                  frequencyText: "Once Per Week",
                ),
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(right: 36.h),
                child: _buildFrame(
                  context,
                  reminderText: "Goal Timeframe",
                  frequencyText: "12 Months",
                ),
              ),
              SizedBox(height: 28.v),
              Text(
                "Goal Preview",
                style: CustomTextStyles.headlineSmallPoppinsBluegray90001,
              ),
              SizedBox(height: 21.v),
              // _buildGoalPreview(context),
              _buildCurrentGoals(context),
              SizedBox(height: 21.v),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: 5
                  ),
                  child: Text(
                    "Checkpoints",
                    style: CustomTextStyles.headlineSmallPoppinsBluegray90001,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 36.h),
                child: _buildFrame(
                  context,
                  reminderText: "Milestone 1",
                  frequencyText: "Complete front-end development",
                ),
              ),
              SizedBox(height: 8.v),
            ],
          ),
        ),
        // bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

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

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarSubtitle(
        text: "New Goal",
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgClose,
          color: Colors.black,
          onTap: (){
            Navigator.pop(context);
          },
          margin: EdgeInsets.symmetric(
            horizontal: 28.h,
            vertical: 1.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildGoalPreview(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 36.h),
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
          Row(
            children: [
              CustomIconButton(
                height: 53.adaptSize,
                width: 53.adaptSize,
                padding: EdgeInsets.all(6.h),
                decoration: IconButtonStyleHelper.fillOnPrimaryContainer,
                child: CustomImageView(
                  imagePath: ImageConstant.imgCloseGreenA200,
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
                      "Launch Nomi",
                      style: CustomTextStyles.bodyLargeNunitoOnPrimary,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "Create App and Launch MVP",
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Divider(
            color: appTheme.gray300,
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: CustomRadioButton(
              text: "Deadline     1 January 2023",
              value: "Deadline     1 January 2023",
              groupValue: radioGroup,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              onChange: (value) {
                radioGroup = value;
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMilestoneCounter(BuildContext context) {
    return SizedBox(
      height: 104.v,
      width: 358.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomFloatingTextField(
            width: 358.h,
            controller: milestoneCounterController,
            labelText: "Milestone 1",
            labelStyle: theme.textTheme.bodyLarge!,
            hintText: "Milestone 1",
            textInputAction: TextInputAction.done,
            alignment: Alignment.bottomCenter,
            contentPadding: EdgeInsets.fromLTRB(16.h, 37.v, 16.h, 10.v),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Checkpoints",
              style: CustomTextStyles.headlineSmallPoppinsBluegray90001,
            ),
          ),
        ],
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
  Widget _buildFrame(
    BuildContext context, {
    required String reminderText,
    required String frequencyText,
  }) {
    return Container(
      width: 358.h,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            reminderText,
            style: CustomTextStyles.bodySmallNunitoGray50004.copyWith(
              color: appTheme.gray50004,
            ),
          ),
          Text(
            frequencyText,
            style: theme.textTheme.bodyLarge!.copyWith(
              color: appTheme.gray700,
            ),
          ),
        ],
      ),
    );
  }
}
