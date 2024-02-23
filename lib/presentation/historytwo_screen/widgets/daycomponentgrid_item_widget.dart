import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';

// ignore: must_be_immutable
class DaycomponentgridItemWidget extends StatelessWidget {
  int index;
  DaycomponentgridItemWidget({Key? key, required this.index})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.v,
      width: 119.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgC1,
            height: 115.v,
            width: 119.h,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 22.h,
                vertical: 5.v,
              ),
              decoration: index==0?AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ):BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(height: 2.v),
                  Text(
                    "Day 1",
                    style: CustomTextStyles.titleSmallOnPrimaryContainer,
                  ),
                  SizedBox(height: 50.v),
                  Text(
                    "Jan 1, 2024 ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.white
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
}
