import '../historytwo_screen/widgets/daycomponentgrid_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/widgets/app_bar/appbar_title_image.dart';
import 'package:nomi/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:nomi/widgets/app_bar/custom_app_bar.dart';
import 'package:nomi/widgets/custom_bottom_bar.dart';
import 'package:nomi/widgets/custom_search_view.dart';

class HistorytwoScreen extends StatelessWidget {
  HistorytwoScreen({Key? key})
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
                    children: [
                      _buildRecordsRow(context),
                      SizedBox(height: 12.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 14.h,
                          right: 13.h,
                        ),
                        child: CustomSearchView(
                          controller: searchController,
                          hintText: "Search",
                        ),
                      ),
                      SizedBox(height: 17.v),
                      _buildDayComponentGrid(context),
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgPlusGreenA200,
                        height: 80.v,
                        width: 75.h,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 135.h),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 11.h,
                  top: 16.v,
                  bottom: 66.v,
                ),
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
  Widget _buildRecordsRow(BuildContext context) {
    return Container(
      width: 353.h,
      margin: EdgeInsets.only(
        left: 10.h,
        right: 6.h,
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
            imagePath: ImageConstant.imgPhSquaresFourBoldGreenA200,
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
            imagePath: ImageConstant.imgVectorBlack90001,
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
  Widget _buildDayComponentGrid(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 116.v,
        crossAxisCount: 3,
        mainAxisSpacing: 6.h,
        crossAxisSpacing: 6.h,
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: 6,
      itemBuilder: (context, index) {
        return DaycomponentgridItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
