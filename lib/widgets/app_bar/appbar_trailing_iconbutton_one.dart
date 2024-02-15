import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarTrailingIconbuttonOne extends StatelessWidget {
  AppbarTrailingIconbuttonOne({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
    this.color,
  }) : super(
          key: key,
        );

  String? imagePath;

  Color? color;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 43.v,
          width: 49.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgScreenshot2023,
              color: color
          ),
        ),
      ),
    );
  }
}
