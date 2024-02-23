import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/presentation/historytwo_screen/historytwo_screen.dart';
import 'package:nomi/widgets/app_bar/appbar_title_image.dart';
import 'package:nomi/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:nomi/widgets/app_bar/custom_app_bar.dart';
import 'package:nomi/widgets/custom_bottom_bar.dart';
import 'package:nomi/widgets/custom_search_view.dart';

import '../../widgets/custom_text_form_field.dart';

class HistorythreeScreen extends StatelessWidget {
  HistorythreeScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 13.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(height: 2.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "2024",
                          style: CustomTextStyles.titleSmallGreenA200,
                        ),
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Divider(
                      endIndent: 4.h,
                      thickness: 1,
                    ),
                    SizedBox(height: 15.v),
                    _buildJanDayOne(context),
                    SizedBox(height: 18.v),
                    Divider(
                      endIndent: 4.h,
                      thickness: 1,
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
        // bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 70,
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
              color: Color(0xff55F4BB),
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
              color: Colors.black,
              onTap: (){
                Navigator
                    .pushReplacement(context, MaterialPageRoute(builder: (context) => HistorytwoScreen(),));
              },
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
              color: Colors.black,
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
  Widget _buildJanDayOne(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Text(
                "Jan 1 - Day 1",
                style: CustomTextStyles.titleSmallGreenA200,
              ),
            ),
            SizedBox(height: 11.v),
            SizedBox(
              width: 219.h,
              child: Text(
                "First Day of the Year, First Day on Nomi.\nYou spent the day in Sun Peaks, BC. In the morning you went snowboarding... ",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumIMFELLDWPica.copyWith(
                  height: 1.57,
                ),
              ),
            ),
          ],
        ),
        CustomImageView(
          imagePath: ImageConstant.imgC1,
          height: 80.v,
          width: 97.h,
          radius: BorderRadius.circular(
            20.h,
          ),
          margin: EdgeInsets.only(top: 13.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
