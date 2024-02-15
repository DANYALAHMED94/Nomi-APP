import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:nomi/core/app_export.dart';
import 'package:nomi/widgets/app_bar/appbar_title_image.dart';
import 'package:nomi/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:nomi/widgets/app_bar/custom_app_bar.dart';
import 'package:nomi/widgets/custom_bottom_bar.dart';
import 'package:nomi/widgets/custom_search_view.dart';

class HistoryOneScreen extends StatelessWidget {
  HistoryOneScreen({Key? key})
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 27.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildRecordsSection(context),
                      SizedBox(height: 12.v),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 14.h,
                            right: 20.h,
                          ),
                          child: CustomSearchView(
                            controller: searchController,
                            hintText: "Search",
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      SizedBox(height: 45.v),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text(
                          "Quick Notes",
                          style: CustomTextStyles.titleMediumGreenA200,
                        ),
                      ),
                      SizedBox(height: 7.v),
                      _buildQuickNotesSection(context),
                      SizedBox(height: 21.v),
                      Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Text(
                          "My Day",
                          style: CustomTextStyles.titleMediumGreenA200,
                        ),
                      ),
                      SizedBox(height: 6.v),
                      _buildArrowSection(context),
                      SizedBox(height: 11.v),
                      Padding(
                        padding: EdgeInsets.only(left: 19.h),
                        child: Text(
                          "Mood",
                          style: CustomTextStyles.titleMediumGreenA200,
                        ),
                      ),
                      SizedBox(height: 11.v),
                      _buildMoodSection(context),
                      SizedBox(height: 20.v),
                      Padding(
                        padding: EdgeInsets.only(left: 17.h),
                        child: Text(
                          "Chats",
                          style: CustomTextStyles.titleMediumGreenA200,
                        ),
                      ),
                      SizedBox(height: 88.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgPlusGreenA200,
                        height: 80.v,
                        width: 75.h,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 4.h,
                  top: 16.v,
                  bottom: 66.v,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 4.h,
                  vertical: 316.v,
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
  Widget _buildRecordsSection(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 353.h,
        margin: EdgeInsets.only(
          left: 10.h,
          right: 13.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildQuickNotesSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 5.h,
        right: 13.h,
      ),
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
  Widget _buildArrowSection(BuildContext context) {
    return SizedBox(
      height: 130.v,
      width: 376.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 342.h,
              margin: EdgeInsets.fromLTRB(14.h, 3.v, 20.h, 124.v),
              child: Row(
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
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
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
                children: [
                  SizedBox(height: 42.v),
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
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMoodSection(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.only(left: 9.h),
      color: theme.colorScheme.primary.withOpacity(0.2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Container(
        height: 143.v,
        width: 358.h,
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 30.h,
                  right: 71.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgScreenshot2023,
                      height: 43.v,
                      width: 49.h,
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(right: 79.h),
                    ),
                    SizedBox(height: 40.v),
                    SizedBox(
                      width: 257.h,
                      child: Text(
                        "Feeling really good about where\n business is going",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 4.v,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgScreenshot2023,
                      height: 43.v,
                      width: 49.h,
                      alignment: Alignment.center,
                    ),
                    SizedBox(height: 40.v),
                    Container(
                      width: 257.h,
                      margin: EdgeInsets.only(right: 41.h),
                      child: Text(
                        "Feeling really good about where\n business is going",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
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
