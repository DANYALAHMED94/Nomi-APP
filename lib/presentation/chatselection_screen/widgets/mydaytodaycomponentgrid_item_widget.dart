import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';

// ignore: must_be_immutable
class MydaytodaycomponentgridItemWidget extends StatelessWidget {
  int index;
  MydaytodaycomponentgridItemWidget({Key? key, required this.index})
      : super(
          key: key,
        );

  List<String> iconsList=[
    ImageConstant.imgUser,
    ImageConstant.imgCalendar,
    ImageConstant.imgThumbsUp,
    ImageConstant.imgTelevision,
    ImageConstant.imgFavorite,
    ImageConstant.imgTelevisionGray50,
    ImageConstant.imgClock,
    ImageConstant.imgUserGray50,
  ];

  List<String> iconsTextList = [
    "My day today",
    "Work",
    "Family",
    "Friends",
    "Love",
    "Exercise",
    "Goals",
    "Mood",
  ];

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: MediaQuery.of(context).size.width*0.5,
        padding: EdgeInsets.symmetric(
          horizontal: 26.h,
          vertical: 19.v,
        ),
        decoration: AppDecoration.fillGreenA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 26.v),
            CustomImageView(
              imagePath: iconsList[index],
              height: 55.v,
              width: 57.h,
              color: Colors.white,
            ),
            SizedBox(height: 13.v),
            Text(
              iconsTextList[index],
              style: CustomTextStyles.titleMediumNunitoOnPrimaryContainer,
            ),
          ],
        ),
      ),
    );
  }
}
