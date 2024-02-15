import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/widgets/app_bar/appbar_leading_image.dart';
import 'package:nomi/widgets/app_bar/appbar_title.dart';
import 'package:nomi/widgets/app_bar/custom_app_bar.dart';
import 'package:nomi/widgets/custom_bottom_bar.dart';
import 'package:nomi/widgets/custom_floating_button.dart';

class SettingscreenScreen extends StatelessWidget {
  SettingscreenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 29.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text(
                "Account",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 9.v),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 342.h,
                  margin: EdgeInsets.symmetric(horizontal: 14.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 12.v,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder6,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgIconamoonProfileLight,
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 45.h,
                              top: 6.v,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "Edit profile",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 9.v),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgMaterialSymbolGray800,
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 45.h,
                              top: 6.v,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "security",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 9.v),
                      _buildAddAccount(
                        context,
                        userImage: ImageConstant.imgIconamoonNotification,
                        addAccountText: "Notifications",
                      ),
                      SizedBox(height: 9.v),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgIcOutlineLock,
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 45.h,
                              top: 6.v,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "Privacy",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 14.v),
              Text(
                "Support & About",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 5.v),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 342.h,
                  margin: EdgeInsets.symmetric(horizontal: 14.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 12.v,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder6,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgMaterialSymbolGray80030x30,
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 44.h,
                              top: 6.v,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "My Subscribtion",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 9.v),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgMdiQuestionMa,
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 45.h,
                              top: 6.v,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "Help & Support",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 9.v),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgTablerCircleLetterI,
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 45.h,
                              top: 4.v,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "Terms and Policies",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              Text(
                "Cache & cellular",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 7.v),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 342.h,
                  margin: EdgeInsets.symmetric(horizontal: 14.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 12.v,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder6,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Opacity(
                            opacity: 0.9,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgRiDeleteBin5Line,
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                            ),
                          ),
                          Opacity(
                            opacity: 0.9,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 47.h,
                                top: 6.v,
                                bottom: 3.v,
                              ),
                              child: Text(
                                "Free up space",
                                style: CustomTextStyles.titleMediumBlack90001,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 9.v),
                      Row(
                        children: [
                          Opacity(
                            opacity: 0.9,
                            child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgIcOutlineDataExploration,
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                            ),
                          ),
                          Opacity(
                            opacity: 0.9,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 47.h,
                                top: 5.v,
                                bottom: 4.v,
                              ),
                              child: Text(
                                "Data Saver",
                                style: CustomTextStyles.titleMediumBlack90001,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8.v),
              Text(
                "Actions",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 6.v),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 342.h,
                  margin: EdgeInsets.symmetric(horizontal: 14.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 9.h,
                    vertical: 12.v,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder6,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgIcSharpOutlinedFlag,
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 45.h,
                              top: 6.v,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "Report a problem",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 9.v),
                      _buildAddAccount(
                        context,
                        userImage: ImageConstant.imgIcSharpPeopleOutline,
                        addAccountText: "Add account",
                      ),
                      SizedBox(height: 9.v),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgMdiLogout,
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 45.h,
                              top: 6.v,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "Log out",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomAppBar(context),
        floatingActionButton: CustomFloatingButton(
          height: 80,
          width: 82,
          child: Icon(
            Icons.add,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 53.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMaterialSymbol,
        margin: EdgeInsets.only(
          left: 23.h,
          top: 11.v,
          bottom: 14.v,
        ),
      ),
      title: AppbarTitle(
        text: "Settings",
        margin: EdgeInsets.only(left: 85.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomAppBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }

  /// Common widget
  Widget _buildAddAccount(
    BuildContext context, {
    required String userImage,
    required String addAccountText,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: userImage,
          height: 30.adaptSize,
          width: 30.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 45.h,
            top: 5.v,
            bottom: 4.v,
          ),
          child: Text(
            addAccountText,
            style: theme.textTheme.titleMedium!.copyWith(
              color: appTheme.black90001,
            ),
          ),
        ),
      ],
    );
  }
}
