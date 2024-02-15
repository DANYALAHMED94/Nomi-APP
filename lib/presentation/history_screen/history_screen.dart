import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:nomi/core/app_export.dart';
import 'package:nomi/widgets/app_bar/appbar_title_image.dart';
import 'package:nomi/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:nomi/widgets/app_bar/custom_app_bar.dart';
import 'package:nomi/widgets/custom_bottom_bar.dart';
import 'package:nomi/widgets/custom_search_view.dart';

class HistoryScreen extends StatelessWidget {
  HistoryScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 13.h),
          child: Column(
            children: [
              SizedBox(height: 16.v),
              SizedBox(
                height: 674.v,
                width: 388.h,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: EdgeInsets.only(left: 371.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 3.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.fillGray,
                        child: Container(
                          height: 25.v,
                          width: 8.h,
                          decoration: BoxDecoration(
                            color: appTheme.gray40003,
                            borderRadius: BorderRadius.circular(
                              4.h,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 1.h,
                          top: 11.v,
                          right: 25.h,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildRecentOrders(context),
                            SizedBox(height: 12.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 4.h,
                                right: 16.h,
                              ),
                              child: CustomSearchView(
                                controller: searchController,
                                hintText: "Search",
                              ),
                            ),
                            SizedBox(height: 17.v),
                            _buildUserProfile(context),
                            SizedBox(height: 14.v),
                            Padding(
                              padding: EdgeInsets.only(left: 9.h),
                              child: Text(
                                "Quick Notes",
                                style: CustomTextStyles.titleMediumGreenA200,
                              ),
                            ),
                            SizedBox(height: 2.v),
                            _buildFrame(context),
                            SizedBox(height: 21.v),
                            Padding(
                              padding: EdgeInsets.only(left: 11.h),
                              child: Text(
                                "My Day",
                                style: CustomTextStyles.titleMediumGreenA200,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    _buildClientTestimonials(context),
                  ],
                ),
              ),
              SizedBox(height: 32.v),
              CustomImageView(
                imagePath: ImageConstant.imgPlusGreenA200,
                height: 80.v,
                width: 75.h,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgBradgoodLogo,
      ),
      actions: [
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgScreenshot2023,
          margin: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 6.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 9.h),
      child: Row(
        children: [
          Text(
            "Records",
            style: theme.textTheme.headlineSmall,
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgMegaphoneGray90001,
            height: 19.v,
            width: 31.h,
            margin: EdgeInsets.symmetric(vertical: 6.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: SizedBox(
              height: 29.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
                endIndent: 4.h,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPhSquaresFourBold,
            height: 31.adaptSize,
            width: 31.adaptSize,
            margin: EdgeInsets.only(left: 6.h),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: SizedBox(
              height: 30.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
                endIndent: 5.h,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUpSecondarycontainer,
            height: 21.v,
            width: 28.h,
            margin: EdgeInsets.only(
              left: 8.h,
              top: 5.v,
              bottom: 5.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Container(
      height: 342.v,
      width: 346.h,
      margin: EdgeInsets.only(left: 4.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgC1,
            height: 342.v,
            width: 346.h,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(right: 4.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Day 1",
                    style: CustomTextStyles.titleSmallOnPrimaryContainer,
                  ),
                  SizedBox(height: 135.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgArrow1,
                        height: 3.v,
                        width: 20.h,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrow2,
                        height: 3.v,
                        width: 19.h,
                      ),
                    ],
                  ),
                  SizedBox(height: 160.v),
                  Text(
                    "Jan 1, 2024 ",
                    style: CustomTextStyles.titleSmallGreenA200,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "Remember to call mam",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 2.v,
            ),
            child: Text(
              "5.15pm",
              style: CustomTextStyles.bodyMediumGray40001,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildClientTestimonials(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.only(right: 12.h),
        padding: EdgeInsets.symmetric(
          horizontal: 18.h,
          vertical: 13.v,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.roundedBorder16,
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgGroup54,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 2.v),
            Container(
              width: 330.h,
              margin: EdgeInsets.only(right: 9.h),
              child: Text(
                "I had uni classes today, then I went to the gym. I met my girlfriend this evening and we went to the cinema to see the new Batman. ",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleSmallPoppinsBlack90001,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
