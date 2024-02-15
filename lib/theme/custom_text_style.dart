import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeMontserratOnErrorContainer =>
      theme.textTheme.bodyLarge!.montserrat.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyLargeNunitoOnPrimary =>
      theme.textTheme.bodyLarge!.nunito.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyLargeSFProTextPrimaryContainer =>
      theme.textTheme.bodyLarge!.sFProText.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.6),
        fontSize: 17.fSize,
      );
  static get bodyMediumGray40001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray40001,
      );
  static get bodyMediumGray50001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyMediumGray50004 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50004,
      );
  static get bodyMediumGray50004_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50004,
      );
  static get bodyMediumIMFELLDWPica => theme.textTheme.bodyMedium!.iMFELLDWPica;
  static get bodyMediumMontserratBlack900 =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: appTheme.black900.withOpacity(0.74),
      );
  static get bodyMediumMontserratOnErrorContainer =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyMediumNunitoGray50003 =>
      theme.textTheme.bodyMedium!.nunito.copyWith(
        color: appTheme.gray50003,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 15.fSize,
      );
  static get bodyMediumPoppins => theme.textTheme.bodyMedium!.poppins;
  static get bodyMediumPoppinsGray50002 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray50002,
      );
  static get bodySmallNunitoGray50004 =>
      theme.textTheme.bodySmall!.nunito.copyWith(
        color: appTheme.gray50004,
        fontWeight: FontWeight.w400,
      );
  // Headline text style
  static get headlineSmallBlack90001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w900,
      );
  static get headlineSmallBlack90001_1 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black90001,
      );
  static get headlineSmallMontserratBlack900 =>
      theme.textTheme.headlineSmall!.montserrat.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get headlineSmallPoppinsBlack90001 =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallPoppinsBluegray90001 =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallSemiBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeInterBlack90001 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeInterOnPrimaryContainer =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleLargeNunitoBlack90001 =>
      theme.textTheme.titleLarge!.nunito.copyWith(
        color: appTheme.black90001,
        fontSize: 23.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeNunitoGray500 =>
      theme.textTheme.titleLarge!.nunito.copyWith(
        color: appTheme.gray500,
        fontSize: 23.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumBlack90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001.withOpacity(0.67),
      );
  static get titleMediumBluegray100 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray100,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray30001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray30001,
      );
  static get titleMediumGray50003 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50003,
      );
  static get titleMediumGray50003Medium =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50003,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get titleMediumGreenA200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.greenA200,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumIndigo900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigo900,
        fontSize: 18.fSize,
      );
  static get titleMediumMontserrat =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMontserratOnPrimaryContainer =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumNunito => theme.textTheme.titleMedium!.nunito.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get titleMediumNunitoOnPrimaryContainer =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w800,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPoppinsGray40004 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray40004,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsGray700 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray700,
        fontSize: 18.fSize,
      );
  static get titleMediumPoppinsGray700Medium =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumff2a2a2a => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF2A2A2A),
      );
  static get titleMediumff545454 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF545454),
      );
  static get titleMediumff55f3ba => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF55F3BA),
      );
  static get titleMediumff648ddb => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF648DDB),
      );
  static get titleMediumff989898 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF989898),
      );
  static get titleMediumff989898Medium => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF989898),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
      );
  static get titleSmallBlack90001SemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGreenA200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.greenA200,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGreenA200SemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.greenA200,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsBlack90001 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black90001,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get iMFELLDWPica {
    return copyWith(
      fontFamily: 'IM FELL DW Pica',
    );
  }

  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }
}
