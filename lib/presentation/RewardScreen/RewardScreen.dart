import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';

import '../../core/utils/image_constant.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class RewardScreen extends StatelessWidget {
  const RewardScreen();

  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: _buildAppBar(context),
      body: SizedBox(
        height: mediaQuery.size.height,
        width: mediaQuery.size.width,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Rewards", style: TextStyle(fontSize: 18, color: Color(0xff49EEB3), fontWeight: FontWeight.bold),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Text Block",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  )
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
          onTap: (){},
          imagePath: ImageConstant.imgWpfCoins,
          colors: Color(0xffFFD700),
        ),
      ],
    );
  }
}
