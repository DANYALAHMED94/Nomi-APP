import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:nomi/widgets/app_bar/appbar_title_image.dart';
import 'package:nomi/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:nomi/widgets/app_bar/custom_app_bar.dart';
import 'package:nomi/widgets/custom_text_form_field.dart';

class MydayoneScreen extends StatelessWidget {
  MydayoneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController greetingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 55.h,
            vertical: 26.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(
                flex: 30,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgScreenshot2023,
                height: 177.v,
                width: 183.h,
                margin: EdgeInsets.only(left: 54.h),
              ),
              Spacer(
                flex: 69,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 122.v,
                  width: 125.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 26.h,
                    vertical: 10.v,
                  ),
                  decoration: AppDecoration.fillOnPrimaryContainer,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgVectorGreenA200,
                    height: 101.v,
                    width: 72.h,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              SizedBox(height: 32.v),
              Padding(
                padding: EdgeInsets.only(right: 26.h),
                child: CustomTextFormField(
                  controller: greetingController,
                  hintText: "Start typing..",
                  hintStyle: CustomTextStyles.bodyMediumPoppinsGray50002,
                  textInputAction: TextInputAction.done,
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(16.h, 17.v, 30.h, 17.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPlus,
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 47.v,
                  ),
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 13.v, 14.h, 13.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMicrophone3421,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 47.v,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 13.v),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 77.h,
      leading: AppbarLeadingIconbuttonTwo(
        imagePath: ImageConstant.imgChevronLeft,
        margin: EdgeInsets.only(
          left: 27.h,
          top: 3.v,
          bottom: 3.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgBradgoodLogo,
      ),
      actions: [
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgScreenshot2023,
          margin: EdgeInsets.fromLTRB(13.h, 6.v, 13.h, 7.v),
        ),
      ],
    );
  }
}
