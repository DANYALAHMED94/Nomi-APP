import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:nomi/widgets/app_bar/appbar_title_image.dart';
import 'package:nomi/widgets/app_bar/appbar_trailing_image.dart';
import 'package:nomi/widgets/app_bar/custom_app_bar.dart';

class TransscriptscreenScreen extends StatelessWidget {
  const TransscriptscreenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 43.v),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 18.h),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.75,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(left: 3.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 137.h,
                      vertical: 7.v,
                    ),
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Transcription",
                          style: CustomTextStyles.titleMediumNunito,
                        ),
                        SizedBox(height: 252.v),
                        Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text(
                            "Continue",
                            style:
                                CustomTextStyles.titleMediumOnPrimaryContainer,
                          ),
                        ),
                        SizedBox(height: 252.v),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -MediaQuery.of(context).size.height*0.15,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Container(
                        height: 122.v,
                        width: 140.h,
                        decoration: BoxDecoration(
                          color: appTheme.greenA200,
                          borderRadius: BorderRadius.circular(
                            70.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 60,
      leadingWidth: 55.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgScreenshot2023,
        margin: EdgeInsets.only(
          left: 12.h,
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
          colors: Color(0xffFFD700),
        ),
      ],
    );
  }
}
