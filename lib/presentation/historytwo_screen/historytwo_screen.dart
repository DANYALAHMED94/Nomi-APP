import '../../widgets/custom_text_form_field.dart';
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
                      _buildRecordsSection(context),
                      SizedBox(height: 12.v),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 3.v,
                          bottom: 2.v,
                        ),
                        child: CustomTextFormField(
                          controller: searchController,
                          hintText: "Search...",
                          hintStyle: CustomTextStyles.bodyMediumPoppinsGray50002,
                          textInputAction: TextInputAction.done,

                          prefix: GestureDetector(
                            onTap: (){

                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(16.h, 17.v, 30.h, 17.v),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgSearch,
                                height: 15.adaptSize,
                                width: 15.adaptSize,
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
      centerTitle: true,
      height: 70,
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
        mainAxisExtent: 126.v,
        crossAxisCount: 3,
        mainAxisSpacing: 6.h,
        crossAxisSpacing: 6.h,
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: 6,
      itemBuilder: (context, index) {
        return DaycomponentgridItemWidget(index: index,);
      },
    );
  }

  Widget _buildRecordsSection(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: MediaQuery.of(context).size.width,
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
              color: Colors.black,
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
              color: Color(0xff55F4BB),
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
}
