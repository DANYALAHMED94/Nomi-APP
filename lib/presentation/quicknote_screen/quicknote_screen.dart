import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:nomi/widgets/app_bar/appbar_title_image.dart';
import 'package:nomi/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:nomi/widgets/app_bar/custom_app_bar.dart';
import 'package:nomi/widgets/custom_icon_button.dart';
import 'package:nomi/widgets/custom_text_form_field.dart';

class QuicknoteScreen extends StatelessWidget {
  QuicknoteScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController plusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: _buildAppBar(context),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 38.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(
                    "Start typing...",
                    style: CustomTextStyles.titleLargeNunitoGray500,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorGreenA200,
                      height: 101.v,
                      width: 72.h,
                      color: Color(0xff49EEB3),
                    ),
                    SizedBox(height: 14.v),
                    Text(
                      "Hold to Record",
                      style: CustomTextStyles.bodyMediumPoppins,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 96.v),
              _buildPlusRow(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 90.v,
      leadingWidth: 76.h,
      leading: AppbarLeadingIconbuttonTwo(
        imagePath: ImageConstant.imgChevronLeft,
        color: Colors.white,
        onTap: (){
          Navigator.pop(context);
        },
        margin: EdgeInsets.only(
          // left: 16.h,
          bottom: 2.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgBradgoodLogo,
        onTap: (){},
      ),
      actions: [
        AppbarTrailingIconbuttonTwo(
          imagePath: ImageConstant.imgReminder,
          margin: EdgeInsets.only(
            left: 8.h,
            top: 1.v,
            right: 10.h
          ),
          color: Colors.white,
          onTap: (){},
        ),

        AppbarTrailingIconbuttonTwo(
          imagePath: ImageConstant.imgSaveOnprimarycontainer,
          margin: EdgeInsets.only(
            left: 8.h,
            top: 1.v,
            right: 8.h
          ),
          color: Colors.white,
          onTap: (){},
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPlusRow(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 3.v,
                  bottom: 2.v,
                ),
                child: CustomTextFormField(
                  controller: plusController,
                  hintText: "Start typing..",
                  hintStyle: CustomTextStyles.bodyMediumPoppinsGray50002,
                  textInputAction: TextInputAction.done,
                  prefix: GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(16.h, 17.v, 30.h, 17.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgPlus,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 47.v,
                  ),
                  suffix: GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 13.v, 14.h, 13.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgMicrophone3421,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 47.v,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 13.v),
                ),
              ),
            ),
            Container(
              height: 52.v,
              width: 55.h,
              margin: EdgeInsets.only(left: 13.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomIconButton(
                    height: 52.v,
                    width: 54.h,
                    padding: EdgeInsets.all(11.h),
                    decoration: IconButtonStyleHelper.fillGreenATL27,
                    alignment: Alignment.center,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSave,
                      color: Colors.white,
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
}
