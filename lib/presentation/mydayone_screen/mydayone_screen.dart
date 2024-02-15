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

  TextEditingController messageText = TextEditingController();

  TextEditingController greetingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.85,
            padding: EdgeInsets.symmetric(
              horizontal: 55.h,
              vertical: 26.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text("Tell me about your day today.\nClick the button for inspiration.",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff9A9A9A)
                  ),
                ),

                CustomImageView(
                  imagePath: ImageConstant.imgScreenshot2023,
                  height: 160.v,
                  width: 183.h,
                  margin: EdgeInsets.only(left: 54.h),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height*0.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                            color: Color(0xff49EEB3),
                          ),
                        ),
                      ),

                      SizedBox(height: 32.v),

                      Padding(
                        padding: EdgeInsets.only(
                          top: 3.v,
                          bottom: 2.v,
                        ),
                        child: CustomTextFormField(
                          controller: messageText,
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
                    ],
                  ),
                )
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
      leadingWidth: 77.h,
      leading: AppbarLeadingIconbuttonTwo(
        onTap: (){
          Navigator.pop(context);
        },
        imagePath: ImageConstant.imgChevronLeft,
        margin: EdgeInsets.only(
          left: 27.h,
          top: 3.v,
          bottom: 3.v,
        ),
        color: Colors.white,
      ),
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
