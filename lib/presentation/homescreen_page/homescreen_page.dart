import 'package:nomi/presentation/chatselection_screen/chatselection_screen.dart';
import 'package:nomi/presentation/currentgoals_screen/currentgoals_screen.dart';
import 'package:nomi/presentation/history_screen/history_screen.dart';
import 'package:nomi/presentation/historythree_screen/historythree_screen.dart';
import 'package:nomi/presentation/historytwo_screen/historytwo_screen.dart';
import 'package:nomi/presentation/moodone_screen/moodone_screen.dart';
import 'package:nomi/presentation/myday_screen/myday_screen.dart';
import 'package:nomi/presentation/mydayone_screen/mydayone_screen.dart';
import 'package:nomi/presentation/newgoals_screen/newgoals_screen.dart';
import '../../widgets/custom_text_form_field.dart';
import '../homescreen_page/widgets/homescreengrid_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:nomi/widgets/app_bar/appbar_title_image.dart';
import 'package:nomi/widgets/app_bar/appbar_trailing_image.dart';
import 'package:nomi/widgets/app_bar/custom_app_bar.dart';

class HomescreenPage extends StatelessWidget {
  HomescreenPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController quickNotes = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 12.v,
            ),
            child: Column(
              children: [
                SizedBox(height: 4.v),
                _buildHomeScreenGrid(context),
                SizedBox(height: 21.v),

                Padding(
                  padding: EdgeInsets.only(
                    top: 3.v,
                    bottom: 2.v,
                  ),
                  child: CustomTextFormField(
                    controller: quickNotes,
                    textAlignment: TextAlign.center,
                    hintText: "Write a quick note..",
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
                      onTap: (){},
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
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 60,
      leadingWidth: 55.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgScreenshot2023,
        margin: EdgeInsets.only(
          left: 12.h,
          top: 6.v,
          bottom: 6.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgBradgoodLogo,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgWpfCoins,
          colors: Color(0xffFFD700),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHomeScreenGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 280.v,
          crossAxisCount: 2,
          mainAxisSpacing: 13.h,
          crossAxisSpacing: 13.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              if(index == 0) {
                Navigator
                    .push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MoodoneScreen(),
                    )
                );
              }
              else if(index == 1) {
                Navigator
                    .push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MydayoneScreen(),
                    )
                );
              }
              else if(index == 2) {
                Navigator
                    .push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatselectionScreen(),
                    )
                );
              }
              else{
                Navigator
                    .push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HistoryScreen(),
                    )
                );
              }
            },
              child: HomescreengridItemWidget(index: index)
          );
        },
      ),
    );
  }
}
