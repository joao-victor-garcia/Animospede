import 'package:animospede/widgets/custom_icon_button.dart';
import 'package:animospede/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

// ignore: must_be_immutable
class AppbarIconbutton extends StatelessWidget {
  AppbarIconbutton({
    Key? key,
    this.imagePath,
    this.svgPath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 71.adaptSize,
          width: 71.adaptSize,
          padding: EdgeInsets.all(2.h),
          decoration: IconButtonStyleHelper.outlineWhiteATL35,
          child: CustomImageView(
            svgPath: svgPath,
            imagePath: imagePath,
          ),
        ),
      ),
    );
  }
}
