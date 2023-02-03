{{> licence.dart }}

import 'package:flutter/material.dart';

import '../theme/design_system.dart';

class AppLoadingIndicator extends StatelessWidget {
  const AppLoadingIndicator({
    this.alignment = Alignment.center,
    this.padding,
    this.size,
    this.strokeWidth,
    this.color,
    Key? key,
  }) : super(key: key);

  final Alignment? alignment;
  final EdgeInsets? padding;
  final Size? size;
  final double? strokeWidth;
  final Color? color;

  factory AppLoadingIndicator.innerCircleValue(BuildContext context) =>
      AppLoadingIndicator(
        padding: EdgeInsets.zero,
        size: Size(
          context.designSystem.spacing.l,
          context.designSystem.spacing.l,
        ),
        strokeWidth: 1.5,
      );

  factory AppLoadingIndicator.textButtonValue(BuildContext context,
      {Color? color}) =>
      AppLoadingIndicator(
        padding: EdgeInsets.zero,
        size: Size(
          context.designSystem.spacing.l,
          context.designSystem.spacing.l,
        ),
        strokeWidth: 2,
        color: color,
      );

  factory AppLoadingIndicator.taskValue(BuildContext context,
      {required Color color}) =>
      AppLoadingIndicator(
        padding: EdgeInsets.zero,
        strokeWidth: 2,
        size: Size(
          context.designSystem.spacing.xxl,
          context.designSystem.spacing.xxl,
        ),
        color: color,
      );

  @override
  Widget build(BuildContext context) => Container(
    alignment: alignment ?? Alignment.center,
    padding: padding ??
        EdgeInsets.symmetric(
          vertical: context.designSystem.spacing.m,
        ),
    width: size?.width ?? context.designSystem.spacing.xxxxl2,
    height: size?.height ?? context.designSystem.spacing.xxxxl2,
    child: CircularProgressIndicator(
      color: color ?? context.designSystem.colors.primaryColor,
      strokeWidth: strokeWidth ?? context.designSystem.spacing.xsss,
    ),
  );
}
