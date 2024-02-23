import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/presentation/history_screen/history_screen.dart';
import 'package:nomi/presentation/historythree_screen/historythree_screen.dart';
import 'package:nomi/presentation/historytwo_screen/historytwo_screen.dart';
import '../../core/utils/image_constant.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_text_form_field.dart';

class HistoryMainScreen extends StatefulWidget {
  const HistoryMainScreen();

  @override
  State<HistoryMainScreen> createState() => _HistoryMainScreenState();
}

class _HistoryMainScreenState extends State<HistoryMainScreen> {

  TextEditingController searchController = TextEditingController();

  List<Widget> historyScreenList = [
    HistoryScreen(),
    HistorytwoScreen(),
    HistorythreeScreen(),
  ];

  int selectedScreen = 0;


  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: SizedBox(
          // height: mediaQuery.size.height,
          width: mediaQuery.size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
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
                      onTap: (){
                        selectedScreen = 0;
                        setState(() {

                        });
                      },
                      color: selectedScreen==0?Color(0xff55F4BB):Colors.black,
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
                      color: selectedScreen==1?Color(0xff55F4BB):Colors.black,
                      onTap: (){
                        selectedScreen = 1;
                        setState(() {

                        });
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
                      onTap: (){
                        selectedScreen = 2;
                        setState(() {

                        });
                      },
                      color: selectedScreen==2?Color(0xff55F4BB):Colors.black,
                      margin: EdgeInsets.only(
                        left: 8.h,
                        top: 5.v,
                        bottom: 5.v,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20
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
              Container(
                height: mediaQuery.size.height*0.62,
                width: mediaQuery.size.width,
                margin: EdgeInsets.all(15),
                child: historyScreenList[
                  selectedScreen
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

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
}
