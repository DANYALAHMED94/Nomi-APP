import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/widgets/app_bar/appbar_title_image.dart';
import 'package:nomi/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:nomi/widgets/app_bar/custom_app_bar.dart';
import 'package:nomi/widgets/custom_elevated_button.dart';

import '../../widgets/custom_text_form_field.dart';

class MoodtwoScreen extends StatelessWidget {
  String imagePath;

  TextEditingController plusController = TextEditingController();

  MoodtwoScreen({Key? key, required this.imagePath})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  child: _buildSun4JunStack(context)
              ),
              _buildMoodTwoColumn(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildContinue(context),
        // bottomNavigationBar: _buildContinueButton(context),
      ),
    );
  }

  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
      height: 60.v,
      text: "Continue",
      onPressed: (){

      },
      margin: EdgeInsets.only(
        left: 25.h,
        right: 29.h,
        bottom: 40.v,
      ),
      buttonStyle: CustomButtonStyles.outlineBlack,
      buttonTextStyle: CustomTextStyles.titleMediumMontserratOnPrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildSun4JunStack(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.32,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomAppBar(
            height: 70.v,
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
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              top: 10.v,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    // left: 56.h,
                    top: 13.v,
                    bottom: 6.v,
                  ),
                  child: Text(
                    "Sun, 4 Jun",
                    style: CustomTextStyles
                        .bodyLargeMontserratOnErrorContainer,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    // left: 56.h,
                    top: 13.v,
                    bottom: 6.v,
                  ),
                  child: Text(
                    "1/2",
                    style: CustomTextStyles
                        .bodyLargeMontserratOnErrorContainer,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                      // left: 56.h,
                      top: 13.v,
                      bottom: 6.v,
                    ),
                    child: IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.close, color: Colors.black, size: 20,),
                    )
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              // left: 17.h,
              right: 22.h,
              bottom: 20.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 333.h,
                  child: Text(
                    "What is making you feel\nthis way?",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.headlineSmallMontserratBlack900,
                  ),
                ),
                // SizedBox(height: 15.v),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Type in the box below or record a voice note",
                    style: CustomTextStyles.bodyMediumMontserratBlack900,
                  ),
                ),
              ],
            ),
          ),

          Stack(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imagePath),
                    fit: BoxFit.fill
                  )
                ),

              )
            ],
          )

        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMoodTwoColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 56.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
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
          SizedBox(height: 30.v),
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
