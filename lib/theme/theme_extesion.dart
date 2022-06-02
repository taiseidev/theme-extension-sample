// copyWithとlerpをoverrideする必要がある。

import 'package:flutter/material.dart';

// スクエアのスタイルを制御
class SquareStyle extends ThemeExtension<SquareStyle> {
  const SquareStyle({
    this.color,
    this.size,
    this.borderRadius,
  });

  final Color? color;
  final double? size;
  final double? borderRadius;

  @override
  ThemeExtension<SquareStyle> copyWith({
    Color? color,
    double? size,
    double? borderRadius,
  }) =>
      SquareStyle(
        color: color ?? this.color,
        size: size ?? this.size,
        borderRadius: borderRadius ?? this.borderRadius,
      );

  @override
  ThemeExtension<SquareStyle> lerp(
      ThemeExtension<SquareStyle>? other, double t) {
    if (other is! SquareStyle) {
      return this;
    }

    return SquareStyle(
      color: Color.lerp(color, other.color, t),
    );
  }
}

// ノーマルボタンのスタイルを制御
class NormalButtonStyle extends ThemeExtension<NormalButtonStyle> {
  const NormalButtonStyle({
    this.width,
    this.height,
    this.title,
  });

  final double? width;
  final double? height;
  final String? title;

  @override
  ThemeExtension<NormalButtonStyle> copyWith({
    double? width,
    double? height,
    String? title,
  }) =>
      NormalButtonStyle(
        width: width ?? this.width,
        height: height ?? this.height,
        title: title ?? this.title,
      );

  @override
  ThemeExtension<NormalButtonStyle> lerp(
      ThemeExtension<NormalButtonStyle>? other, double t) {
    if (other is! NormalButtonStyle) {
      return this;
    }

    return const NormalButtonStyle();
  }
}
