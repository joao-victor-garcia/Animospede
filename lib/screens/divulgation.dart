import 'package:animospede/core/app_export.dart';
import 'package:animospede/widgets/custom_elevated_button.dart';
import 'package:animospede/widgets/custom_image_view.dart';
import 'package:animospede/widgets/custom_switch.dart';
import 'package:animospede/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

Widget _buildDivulgationScreen(BuildContext context) {
  bool isSelectedSwitch = false;
  bool isSelectedSwitch1 = false;
  TextEditingController createuserController = TextEditingController();
  TextEditingController createuserController1 = TextEditingController();
  TextEditingController createuserController2 = TextEditingController();

  return SafeArea(
    child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 36.h,
                  top: 2.v,
                ),
                child: Text(
                  "Divulgação",
                  style: theme.textTheme.headlineSmall,
                ),
              ),
            ),
            Container(
              width: 295.h,
              margin: EdgeInsets.only(
                left: 36.h,
                top: 5.v,
                right: 43.h,
              ),
              child: Text(
                "preencha os dados abaixo que aparecerão em seu perfil host!",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            CustomTextFormField(
              controller: createuserController,
              margin: EdgeInsets.only(
                left: 29.h,
                top: 42.v,
                right: 31.h,
              ),
              hintText: "Descrição",
              hintStyle: CustomTextStyles.bodyMediumBlack900,
              borderDecoration: TextFormFieldStyleHelper.fillYellow,
              fillColor: appTheme.yellow100,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 50.h,
                top: 59.v,
                right: 47.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: Text(
                      "Passeio",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  CustomSwitch(
                    margin: EdgeInsets.only(top: 2.v),
                    value: isSelectedSwitch,
                    onChange: (value) {
                      isSelectedSwitch = value;
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 47.h,
                top: 32.v,
                right: 47.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hospedagem",
                    style: theme.textTheme.bodyLarge,
                  ),
                  CustomSwitch(
                    value: isSelectedSwitch1,
                    onChange: (value) {
                      isSelectedSwitch1 = value;
                    },
                  ),
                ],
              ),
            ),
            CustomTextFormField(
              controller: createuserController1,
              margin: EdgeInsets.only(
                left: 29.h,
                top: 29.v,
                right: 31.h,
              ),
              hintText: "Valor da hora (R)",
              borderDecoration: TextFormFieldStyleHelper.fillOnPrimaryContainer,
              fillColor: theme.colorScheme.onPrimaryContainer,
            ),
            CustomTextFormField(
              controller: createuserController2,
              margin: EdgeInsets.only(
                left: 30.h,
                top: 22.v,
                right: 30.h,
              ),
              hintText: "Valor da diária (R)",
              hintStyle: CustomTextStyles.bodyMediumBlack900,
              textInputAction: TextInputAction.done,
              borderDecoration: TextFormFieldStyleHelper.fillYellow,
              fillColor: appTheme.yellow100,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 21.h,
                top: 13.v,
                right: 17.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 165.h,
                    padding: EdgeInsets.symmetric(horizontal: 9.h),
                    decoration: AppDecoration.fillYellow.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 7.v,
                            bottom: 9.v,
                          ),
                          child: Text(
                            "+ Foto de perfil",
                            style: CustomTextStyles.labelLargePoppins,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgMediaoutlineimage,
                          height: 31.v,
                          width: 35.h,
                          margin: EdgeInsets.only(
                            left: 5.h,
                            bottom: 3.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 165.h,
                    margin: EdgeInsets.only(left: 7.h),
                    padding: EdgeInsets.symmetric(horizontal: 9.h),
                    decoration: AppDecoration.fillYellow.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 7.v,
                            bottom: 9.v,
                          ),
                          child: Text(
                            "+ Foto de capa",
                            style: CustomTextStyles.labelLargePoppins,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgMediaoutlineimage,
                          height: 31.v,
                          width: 35.h,
                          margin: EdgeInsets.only(
                            left: 4.h,
                            bottom: 3.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            CustomElevatedButton(
              height: 59.v,
              text: "Salvar",
              margin: EdgeInsets.only(
                left: 30.h,
                top: 32.v,
                right: 30.h,
              ),
              buttonStyle: CustomButtonStyles.outlineIndigo,
              buttonTextStyle: CustomTextStyles.titleMediumPoppinsWhiteA700,
            ),
          ],
        ),
      ),
    ),
  );
}

class Divulgation extends StatelessWidget {
  const Divulgation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildDivulgationScreen(context);
  }
}
