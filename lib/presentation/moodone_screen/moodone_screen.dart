import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/widgets/app_bar/appbar_title_image.dart';
import 'package:nomi/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:nomi/widgets/app_bar/custom_app_bar.dart';
import 'package:nomi/widgets/custom_elevated_button.dart';
import 'package:nomi/widgets/custom_icon_button.dart';

class MoodoneScreen extends StatefulWidget {
  MoodoneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<MoodoneScreen> createState() => _MoodoneScreenState();
}

class _MoodoneScreenState extends State<MoodoneScreen> {

  double sliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: 414.h,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildSun4JunStack(context),
              Container(
                height: 480.v,
                width: 414.h,
                padding: EdgeInsets.only(top: 117.v),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    _buildComponentOneStack(context),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 107.v),
                        child: Text(
                          "Great",
                          style: CustomTextStyles.titleMediumMontserrat,
                        ),
                      ),
                    ),
                    Slider(
                        value: sliderValue,
                        min: 0,
                        max: 100,
                        thumbColor: Colors.white,
                        onChanged: (value) {
                          sliderValue = value;
                          setState(() {

                          });
                        },
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 87.v),
                      child: SliderTheme(
                        data: SliderThemeData(
                          trackShape: RoundedRectSliderTrackShape(),
                          inactiveTrackColor: theme
                              .colorScheme.onPrimaryContainer
                              .withOpacity(0.4),
                          thumbColor: theme.colorScheme.onPrimaryContainer
                              .withOpacity(1),
                          thumbShape: RoundSliderThumbShape(),
                        ),
                        child: Slider(
                          value: 87.66,
                          min: 0.0,
                          max: 100.0,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildContinue(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSun4JunStack(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 284.v,
        width: 396.h,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse74,
              height: 284.v,
              width: 354.h,
              alignment: Alignment.centerLeft,
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
                        "1/2",
                        style: CustomTextStyles
                            .bodyLargeMontserratOnErrorContainer,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 40.h,
                  right: 22.h,
                  bottom: 74.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 333.h,
                      child: Text(
                        "How do you feel right now\n Patrick?",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.headlineSmallMontserratBlack900,
                      ),
                    ),
                    SizedBox(height: 15.v),
                    Text(
                      "Use the sliding bar to show how you’re feeling",
                      style: CustomTextStyles.bodyMediumMontserratBlack900,
                    ),
                  ],
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
  Widget _buildComponentOneStack(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 88.v,
        width: 414.h,
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 12.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup88,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 64.adaptSize,
                width: 64.adaptSize,
                margin: EdgeInsets.only(right: 146.h),
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                decoration: AppDecoration.fillAmber.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder32,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.img0d833d866ea740b,
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.v),
                    child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgPoutingFace,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEmoji,
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    margin: EdgeInsets.only(
                      left: 32.h,
                      top: 5.v,
                      bottom: 5.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgNeutralFace,
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    margin: EdgeInsets.only(left: 40.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEmoji,
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    margin: EdgeInsets.only(
                      left: 40.h,
                      top: 5.v,
                      bottom: 5.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEmoji,
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    margin: EdgeInsets.only(
                      left: 33.h,
                      top: 5.v,
                      bottom: 5.v,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
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
