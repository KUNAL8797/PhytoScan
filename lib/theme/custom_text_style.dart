import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Display text style
  static get displayMediumBluegray900 =>
      theme.textTheme.displayMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 48.fSize,
      );
  static get displayMediumInriaSerifOnPrimaryContainer =>
      theme.textTheme.displayMedium!.inriaSerif.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 48.fSize,
        fontWeight: FontWeight.w700,
      );
  static get displaySmallInriaSerifBlack900 =>
      theme.textTheme.displaySmall!.inriaSerif.copyWith(
        color: appTheme.black900,
        fontSize: 38.fSize,
        fontWeight: FontWeight.w700,
      );
  // Headline text style
  static get headlineMediumOnPrimary =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get headlineSmallBlack90001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black90001,
      );
  static get headlineSmallBlack90001_1 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black90001.withOpacity(0.39),
      );
  static get headlineSmallGreen90001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.green90001,
      );
  static get headlineSmallInriaSerifOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.inriaSerif.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargeBlack90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001.withOpacity(0.62),
      );
  static get titleLargeGreen900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.green900,
        fontSize: 20.fSize,
      );
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 20.fSize,
      );
  static get titleLargePrimaryContainer20 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 20.fSize,
      );
  static get titleLargePrimaryContainer_1 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleLargePrimaryContainer_2 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
}

extension on TextStyle {
  TextStyle get dMSerifDisplay {
    return copyWith(
      fontFamily: 'DM Serif Display',
    );
  }

  TextStyle get inriaSerif {
    return copyWith(
      fontFamily: 'Inria Serif',
    );
  }
}
