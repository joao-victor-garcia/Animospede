import 'package:animospede/core/app_export.dart';
import 'package:animospede/widgets/app_bar/appbar_iconbutton.dart';
import 'package:animospede/widgets/app_bar/appbar_image.dart';
import 'package:animospede/widgets/app_bar/custom_app_bar.dart';
import 'package:animospede/widgets/custom_elevated_button.dart';
import 'package:animospede/widgets/custom_image_view.dart';
import 'package:animospede/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

Widget _buildProfilePage() {
  String radioGroup = "";

  return SafeArea(
    child: Scaffold(
      appBar: CustomAppBar(
        height: 125.v,
        centerTitle: true,
        title: SizedBox(
          height: 125.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              AppbarImage(
                imagePath: ImageConstant.imgRectangle53,
                margin: EdgeInsets.only(bottom: 29.v),
              ),
              AppbarIconbutton(
                svgPath: ImageConstant.imgSignal,
                margin: EdgeInsets.only(
                  left: 152.h,
                  top: 54.v,
                  right: 152.h,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 23.v,
        ),
        child: Column(
          children: [
            Text(
              "Minha conta",
              style: theme.textTheme.headlineSmall,
            ),
            SizedBox(height: 43.v),
            SizedBox(
              height: 45.v,
              width: 350.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Text(
                        "Nome",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Text(
                        "Matheus Henrique",
                        style: CustomTextStyles.bodyMediumRobotoBluegray70014,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 113.h,
                        vertical: 4.v,
                      ),
                      decoration: AppDecoration.outlineBlueGray,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 4.v),
                          Container(
                            height: 12.v,
                            width: 8.h,
                            decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(
                                  color: appTheme.blueGray700,
                                  width: 1.h,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 2.h,
                top: 23.v,
                right: 4.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "E-mail",
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 9.v),
                      Text(
                        "matheus.barreto@fatec.sp.gov.br",
                        style: CustomTextStyles.bodyMediumRobotoBluegray70014,
                      ),
                    ],
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgEditcirclesvgrepocom,
                    height: 27.adaptSize,
                    width: 27.adaptSize,
                    radius: BorderRadius.circular(
                      13.h,
                    ),
                    margin: EdgeInsets.only(
                      top: 14.v,
                      bottom: 6.v,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 2.h,
                  top: 25.v,
                ),
                child: Text(
                  "Contato",
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ),
            CustomRadioButton(
              width: 345.h,
              text: "+55 (17) 99286-2586",
              value: "+55 (17) 99286-2586",
              groupValue: radioGroup,
              margin: EdgeInsets.only(
                left: 2.h,
                top: 3.v,
                right: 4.h,
              ),
              padding: EdgeInsets.symmetric(vertical: 4.v),
              isRightCheck: true,
              onChange: (value) {
                radioGroup = value;
              },
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 19.v,
                width: 98.h,
                margin: EdgeInsets.only(
                  left: 2.h,
                  top: 21.v,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Editar senha",
                        style: CustomTextStyles.titleMediumMedium,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 15.v,
                        width: 98.h,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: appTheme.blueGray700,
                              width: 1.h,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomElevatedButton(
              height: 59.v,
              text: "Salvar",
              margin: EdgeInsets.only(
                left: 18.h,
                top: 62.v,
                right: 18.h,
              ),
              buttonStyle: CustomButtonStyles.outlineIndigo,
              buttonTextStyle: CustomTextStyles.titleMediumPoppinsWhiteA700,
            ),
            SizedBox(height: 18.v),
            Text(
              "Sair",
              style: theme.textTheme.bodyLarge,
            ),
            SizedBox(height: 5.v),
          ],
        ),
      ),
    ),
  );
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildProfilePage();
  }
}
