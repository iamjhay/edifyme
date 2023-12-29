import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeNunitoSans =>
      theme.textTheme.bodyLarge!.nunitoSans.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeNunitoSans16 =>
      theme.textTheme.bodyLarge!.nunitoSans.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyMediumMontserrat => theme.textTheme.bodyMedium!.montserrat;
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  // Display style
  static get displaySmallInter => theme.textTheme.displaySmall!.inter;
  static get displaySmallInter34 =>
      theme.textTheme.displaySmall!.inter.copyWith(
        fontSize: 34.fSize,
      );
  // Label text style
  static get labelLargeInter => theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray100 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray100,
      );
  static get titleSmallGray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
      );
  static get titleSmallGreenA200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.greenA200,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGreenA200Medium => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.greenA200,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGreenA200_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.greenA200,
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMedium_1 => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get nunitoSans {
    return copyWith(
      fontFamily: 'Nunito Sans',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

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
}
