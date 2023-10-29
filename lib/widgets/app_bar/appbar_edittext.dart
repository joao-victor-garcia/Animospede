import 'package:animospede/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';
import '../../core//app_export.dart';
import '../custom_text_form_field.dart';

// ignore: must_be_immutable
class AppbarEdittext extends StatelessWidget {
  AppbarEdittext({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomTextFormField(
        width: 300.h,
        controller: controller,
        hintText: "Pesquisar",
        prefix: Container(
          margin: EdgeInsets.fromLTRB(12.h, 3.v, 2.h, 3.v),
          child: CustomImageView(
            svgPath: ImageConstant.imgSearch,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 31.v,
        ),
        contentPadding: EdgeInsets.only(
          top: 5.v,
          right: 30.h,
          bottom: 5.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        fillColor: appTheme.gray50,
      ),
    );
  }
}
