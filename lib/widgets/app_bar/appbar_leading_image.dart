import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';

// ignore: must_be_immutable
class AppbarLeadingImage extends StatelessWidget {
  AppbarLeadingImage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
    this.color
  }) : super(
          key: key,
        );

  String? imagePath;

  Color? color;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 33.v,
          width: 122.h,
          fit: BoxFit.contain,
          color: color,
        ),
      ),
    );
  }
}
