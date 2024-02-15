import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarTrailingIconbuttonTwo extends StatelessWidget {
  AppbarTrailingIconbuttonTwo({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
    this.color
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          // height: 43.v,
          // width: 49.h,
          height: 50.v,
          width: 49.h,
          padding: EdgeInsets.all(8),
          decoration: IconButtonStyleHelper.fillGreenA,
          child: CustomImageView(
            imagePath: imagePath ?? ImageConstant.imgFavorite,
            color: color,
            // fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
