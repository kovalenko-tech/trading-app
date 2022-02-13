import 'dart:ui' as ui show Shadow, FontFeature;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trading_app/common/theme/app_theme_color_scheme.dart';
import 'package:trading_app/generated/fonts.gen.dart';

class AppTextTheme extends TextTheme {
  const AppTextTheme({
    required this.caption1,
    required this.caption2,
    required this.footnote,
    required this.largeTitle,
    required this.title2,
    required this.title3,
    required this.button,
  }) : super();

  factory AppTextTheme.byColorScheme(
    AppThemeColorScheme colorScheme,
  ) =>
      AppTextTheme(
        caption1: AppThemeTextStyle(colorScheme).merge(
          TextStyle(
            fontFamily: FontFamily.aktivGrotesk,
            color: colorScheme.white,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: 12.sp,
            height: 16.sp / 12.sp,
            letterSpacing: 0.01.sp,
          ),
        ),
        caption2: AppThemeTextStyle(colorScheme).merge(
          TextStyle(
            fontFamily: FontFamily.aktivGrotesk,
            color: colorScheme.white,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: 10.sp,
            height: 13.sp / 10.sp,
            letterSpacing: 0.02.sp,
          ),
        ),
        footnote: AppThemeTextStyle(colorScheme).merge(
          TextStyle(
            fontFamily: FontFamily.aktivGrotesk,
            color: colorScheme.white,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: 13.sp,
            height: 18.sp / 13.sp,
            letterSpacing: 0.01.sp,
          ),
        ),
        largeTitle: AppThemeTextStyle(colorScheme).merge(
          TextStyle(
            fontFamily: FontFamily.aktivGrotesk,
            color: colorScheme.white,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 34.sp,
            height: 41.sp / 34.sp,
            letterSpacing: -0.01.sp,
          ),
        ),
        title2: AppThemeTextStyle(colorScheme).merge(
          TextStyle(
            fontFamily: FontFamily.aktivGrotesk,
            color: colorScheme.white,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 22.sp,
            height: 28.sp / 22.sp,
          ),
        ),
        title3: AppThemeTextStyle(colorScheme).merge(
          TextStyle(
            fontFamily: FontFamily.aktivGrotesk,
            color: colorScheme.white,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 20.sp,
            height: 25.sp / 20.sp,
          ),
        ),
        button: AppThemeTextStyle(colorScheme).merge(
          TextStyle(
            fontFamily: FontFamily.aktivGrotesk,
            color: colorScheme.white,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 17.sp,
            height: 22.sp / 17.sp,
          ),
        ),
      );

  final AppThemeTextStyle caption1;
  final AppThemeTextStyle caption2;
  final AppThemeTextStyle footnote;
  final AppThemeTextStyle largeTitle;
  final AppThemeTextStyle title2;
  final AppThemeTextStyle title3;

  @override
  final AppThemeTextStyle button;
}

class AppThemeTextStyle extends TextStyle {
  const AppThemeTextStyle(
    this.colorScheme, {
    bool inherit = true,
    Color? color,
    Color? backgroundColor,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    List<ui.Shadow>? shadows,
    List<ui.FontFeature>? fontFeatures,
  }) : super(
          inherit: inherit,
          color: color,
          backgroundColor: backgroundColor,
          fontFamily: fontFamily,
          fontFamilyFallback: fontFamilyFallback,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          letterSpacing: letterSpacing,
          wordSpacing: wordSpacing,
          textBaseline: textBaseline,
          height: height,
          locale: locale,
          foreground: foreground,
          background: background,
          decoration: decoration,
          decorationColor: decorationColor,
          decorationStyle: decorationStyle,
          decorationThickness: decorationThickness,
          debugLabel: debugLabel,
          shadows: shadows,
          fontFeatures: fontFeatures,
        );

  final AppThemeColorScheme colorScheme;

  @override
  AppThemeTextStyle copyWith({
    bool? inherit,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<ui.Shadow>? shadows,
    List<ui.FontFeature>? fontFeatures,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    String? package,
    TextOverflow? overflow,
  }) {
    return AppThemeTextStyle(
      colorScheme,
      inherit: inherit ?? this.inherit,
      color: this.foreground == null && foreground == null ? color ?? this.color : null,
      backgroundColor: this.background == null && background == null ? backgroundColor ?? this.backgroundColor : null,
      fontFamily: fontFamily ?? this.fontFamily,
      fontFamilyFallback: fontFamilyFallback ?? this.fontFamilyFallback,
      fontSize: fontSize ?? this.fontSize,
      fontWeight: fontWeight ?? this.fontWeight,
      fontStyle: fontStyle ?? this.fontStyle,
      letterSpacing: letterSpacing ?? this.letterSpacing,
      wordSpacing: wordSpacing ?? this.wordSpacing,
      textBaseline: textBaseline ?? this.textBaseline,
      height: height ?? this.height,
      locale: locale ?? this.locale,
      foreground: foreground ?? this.foreground,
      background: background ?? this.background,
      shadows: shadows ?? this.shadows,
      fontFeatures: fontFeatures ?? this.fontFeatures,
      decoration: decoration ?? this.decoration,
      decorationColor: decorationColor ?? this.decorationColor,
      decorationStyle: decorationStyle ?? this.decorationStyle,
      decorationThickness: decorationThickness ?? this.decorationThickness,
    );
  }

  @override
  AppThemeTextStyle merge(TextStyle? other) {
    final merged = super.merge(other);

    return copyWith(
      inherit: merged.inherit,
      color: merged.color,
      backgroundColor: merged.backgroundColor,
      fontFamily: merged.fontFamily,
      fontFamilyFallback: merged.fontFamilyFallback,
      fontSize: merged.fontSize,
      fontWeight: merged.fontWeight,
      fontStyle: merged.fontStyle,
      letterSpacing: merged.letterSpacing,
      wordSpacing: merged.wordSpacing,
      textBaseline: merged.textBaseline,
      height: merged.height,
      locale: merged.locale,
      foreground: merged.foreground,
      background: merged.background,
      shadows: merged.shadows,
      fontFeatures: merged.fontFeatures,
      decoration: merged.decoration,
      decorationColor: merged.decorationColor,
      decorationStyle: merged.decorationStyle,
      decorationThickness: merged.decorationThickness,
      debugLabel: merged.debugLabel,
    );
  }
}
