import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBlack90013 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.25),
        fontSize: 13.fSize,
      );
  static get bodyMediumInterBlack900 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get bodyMediumRobotoBluegray700 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.blueGray700,
        fontSize: 14.fSize,
      );
  static get bodyMediumRobotoBluegray70014 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.blueGray700,
        fontSize: 14.fSize,
      );
  static get bodyMediumRobotoBluegray70014_1 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.blueGray700,
        fontSize: 14.fSize,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );
  // Headline text style
  static get headlineSmallRobotoBluegray700 =>
      theme.textTheme.headlineSmall!.roboto.copyWith(
        color: appTheme.blueGray700,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeGray500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray500,
      );
  static get labelLargeOrange300 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.orange300,
      );
  static get labelLargePoppins => theme.textTheme.labelLarge!.poppins.copyWith(
        fontSize: 12.fSize,
      );
  static get labelLargePoppinsGray800 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray800,
        fontSize: 12.fSize,
      );
  static get labelLargePoppinsIndigo900 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.indigo900,
        fontSize: 12.fSize,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelSmallDeeporange400 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.deepOrange400,
      );
  static get labelSmallErrorContainer => theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get labelSmallGray900 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray900,
      );
  static get labelSmallGray90001 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray90001,
      );
  // Title text style
  static get titleLargeInterBlack900 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeRobotoBluegray700 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.blueGray700,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsBlack900 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsOnError =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsWhiteA700 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
