import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/widgets/app_bar/appbar_title_image.dart';
import 'package:nomi/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:nomi/widgets/app_bar/custom_app_bar.dart';
import 'package:nomi/widgets/custom_elevated_button.dart';
import 'package:nomi/widgets/custom_icon_button.dart';
import 'package:nomi/widgets/custom_outlined_button.dart';

class MoodtwoScreen extends StatelessWidget {
  const MoodtwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 414.h,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildSun4JunStack(context),
              _buildMoodTwoColumn(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildContinueButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSun4JunStack(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 322.v,
        width: 396.h,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse74284x354,
              height: 284.v,
              width: 354.h,
              alignment: Alignment.topLeft,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 17.h,
                  top: 70.v,
                ),
                child: Row(
                  children: [
                    CustomElevatedButton(
                      height: 40.v,
                      width: 125.h,
                      text: "Sun, 4 Jun",
                      rightIcon: Container(
                        margin: EdgeInsets.only(left: 8.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCalendarGreenA200,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                        ),
                      ),
                      buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
                      buttonTextStyle:
                          CustomTextStyles.bodyMediumMontserratOnErrorContainer,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 56.h,
                        top: 13.v,
                        bottom: 6.v,
                      ),
                      child: Text(
                        "2/2",
                        style: CustomTextStyles
                            .bodyLargeMontserratOnErrorContainer,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 307.h,
                margin: EdgeInsets.only(
                  top: 115.v,
                  right: 20.h,
                ),
                child: Text(
                  "What is making you feel\n this way?",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.headlineSmallMontserratBlack900,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 108.v),
                child: Text(
                  "Type in the box below or record a voice note",
                  style: CustomTextStyles.bodyMediumMontserratBlack900,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 82.v),
              child: CustomIconButton(
                height: 30.adaptSize,
                width: 30.adaptSize,
                padding: EdgeInsets.all(3.h),
                decoration: IconButtonStyleHelper.fillOnPrimaryContainerTL15,
                alignment: Alignment.topRight,
                child: CustomImageView(
                  imagePath: ImageConstant.imgCloseOnerrorcontainer,
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgImage1,
              height: 77.v,
              width: 83.h,
              alignment: Alignment.bottomCenter,
            ),
            CustomAppBar(
              height: 67.v,
              centerTitle: true,
              title: AppbarTitleImage(
                imagePath: ImageConstant.imgBradgoodLogo,
              ),
              actions: [
                AppbarTrailingIconbuttonOne(
                  imagePath: ImageConstant.imgScreenshot2023,
                  margin: EdgeInsets.symmetric(horizontal: 18.h),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMoodTwoColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 56.h,
        vertical: 33.v,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 132.v),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 24.v,
              width: 21.h,
              margin: EdgeInsets.only(right: 18.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                borderRadius: BorderRadius.circular(
                  12.h,
                ),
                border: Border.all(
                  color: theme.colorScheme.onPrimaryContainer,
                  width: 9.h,
                  strokeAlign: strokeAlignOutside,
                ),
              ),
            ),
          ),
          SizedBox(height: 171.v),
          CustomOutlinedButton(
            height: 47.v,
            text: "Start typing..",
            margin: EdgeInsets.only(right: 10.h),
            rightIcon: Container(
              margin: EdgeInsets.only(left: 30.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgMicrophone3421,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 30.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgPlus,
                height: 12.adaptSize,
                width: 12.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.outlineGrayTL21,
            buttonTextStyle: CustomTextStyles.bodyMediumPoppinsGray50002,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
      height: 60.v,
      text: "Continue",
      margin: EdgeInsets.only(
        left: 25.h,
        right: 29.h,
        bottom: 40.v,
      ),
      buttonStyle: CustomButtonStyles.outlineBlack,
      buttonTextStyle: CustomTextStyles.titleMediumMontserratOnPrimaryContainer,
    );
  }
}
