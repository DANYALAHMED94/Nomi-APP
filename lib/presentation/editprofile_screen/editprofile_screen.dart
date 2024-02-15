import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/widgets/app_bar/appbar_leading_image.dart';
import 'package:nomi/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:nomi/widgets/app_bar/custom_app_bar.dart';
import 'package:nomi/widgets/custom_drop_down.dart';
import 'package:nomi/widgets/custom_elevated_button.dart';
import 'package:nomi/widgets/custom_text_form_field.dart';

class EditprofileScreen extends StatelessWidget {
  EditprofileScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameEditTextController = TextEditingController();

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList1 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: 390.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 7.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 175.v,
                        width: 171.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 175.v,
                                width: 171.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    87.h,
                                  ),
                                  border: Border.all(
                                    color: appTheme.greenA200,
                                    width: 1.h,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 170.v,
                                width: 165.h,
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEllipse2,
                                      height: 170.v,
                                      width: 165.h,
                                      radius: BorderRadius.circular(
                                        85.h,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgSolarCameraMi,
                                      height: 32.adaptSize,
                                      width: 32.adaptSize,
                                      alignment: Alignment.bottomRight,
                                      margin: EdgeInsets.only(right: 9.h),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 21.v),
                    Text(
                      "Name",
                      style: CustomTextStyles.titleMediumBold,
                    ),
                    SizedBox(height: 7.v),
                    _buildNameEditText(context),
                    SizedBox(height: 14.v),
                    Text(
                      "Email",
                      style: CustomTextStyles.titleMediumBold,
                    ),
                    SizedBox(height: 8.v),
                    _buildEmailEditText(context),
                    SizedBox(height: 15.v),
                    Text(
                      "Password",
                      style: CustomTextStyles.titleMediumBold,
                    ),
                    SizedBox(height: 7.v),
                    _buildPasswordEditText(context),
                    SizedBox(height: 14.v),
                    Text(
                      "Date of Birth",
                      style: CustomTextStyles.titleMediumBold,
                    ),
                    SizedBox(height: 8.v),
                    CustomDropDown(
                      icon: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 8.v, 20.h, 16.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFavoriteBlack90001,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                        ),
                      ),
                      hintText: "23/05/1995",
                      items: dropdownItemList,
                      onChanged: (value) {},
                    ),
                    SizedBox(height: 16.v),
                    Text(
                      "Country/Region",
                      style: CustomTextStyles.titleMediumBold,
                    ),
                    SizedBox(height: 6.v),
                    CustomDropDown(
                      icon: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 8.v, 20.h, 16.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFavoriteBlack90001,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                        ),
                      ),
                      hintText: "Nigeria",
                      items: dropdownItemList1,
                      onChanged: (value) {},
                    ),
                    SizedBox(height: 29.v),
                    _buildSaveChangesButton(context),
                    SizedBox(height: 5.v),
                  ],
                ),
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
      leadingWidth: 55.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMaterialSymbol,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 13.v,
          bottom: 13.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "Edit Profile",
      ),
    );
  }

  /// Section Widget
  Widget _buildNameEditText(BuildContext context) {
    return CustomTextFormField(
      controller: nameEditTextController,
      hintText: "Melissa Peters",
      hintStyle: theme.textTheme.titleSmall!,
      borderDecoration: TextFormFieldStyleHelper.outlineGrayTL6,
    );
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return CustomTextFormField(
      controller: emailEditTextController,
      hintText: "melpeters@gmail.com",
      hintStyle: theme.textTheme.titleSmall!,
      textInputType: TextInputType.emailAddress,
      borderDecoration: TextFormFieldStyleHelper.outlineGrayTL6,
    );
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return CustomTextFormField(
      controller: passwordEditTextController,
      hintText: "************",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
      borderDecoration: TextFormFieldStyleHelper.outlineGrayTL6,
    );
  }

  /// Section Widget
  Widget _buildSaveChangesButton(BuildContext context) {
    return CustomElevatedButton(
      height: 45.v,
      width: 221.h,
      text: "Save changes",
      buttonStyle: CustomButtonStyles.fillGreenA,
      buttonTextStyle: CustomTextStyles.titleLargeInterOnPrimaryContainer,
      alignment: Alignment.center,
    );
  }
}
