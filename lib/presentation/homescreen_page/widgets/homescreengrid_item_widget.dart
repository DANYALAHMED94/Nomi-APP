import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';

// ignore: must_be_immutable
class HomescreengridItemWidget extends StatelessWidget {
  int index;
  HomescreengridItemWidget({required this.index});

  List<String> gridIconsList = [
    ImageConstant.imgVectorGray50,
    ImageConstant.imgVectorOnprimarycontainer,
    ImageConstant.imgVectorGray5099x124,
    ImageConstant.imgVectorGray50117x123
  ];

  List<String> gridIconsTextList = [
    "Mood",
    "My Day",
    "Chat",
    "Memories",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 33.v,
      ),
      decoration: AppDecoration.fillGreenA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 12.v),
          CustomImageView(
            imagePath: gridIconsList[index],
            height: 129.v,
            width: 130.h,
            color: Colors.white,
          ),
          SizedBox(height: 24.v),
          Text(
            gridIconsTextList[index],
            style: CustomTextStyles.headlineSmallOnPrimaryContainer,
          ),
        ],
      ),
    );
  }
}
