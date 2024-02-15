import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
    this.color
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final Color? color;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: color ?? appTheme.gray20001,
                  borderRadius: BorderRadius.circular(21.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA200,
        borderRadius: BorderRadius.circular(15.h),
      );
  static BoxDecoration get fillBlueA => BoxDecoration(
        color: appTheme.blueA400,
        borderRadius: BorderRadius.circular(26.h),
      );
  static BoxDecoration get fillGreenATL27 => BoxDecoration(
        color: appTheme.greenA200,
        borderRadius: BorderRadius.circular(27.h),
      );
  static BoxDecoration get fillOnPrimaryContainerTL15 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(15.h),
      );
}
