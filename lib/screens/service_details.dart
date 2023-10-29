import 'package:animospede/core/app_export.dart';
import 'package:animospede/screens/services.dart';
import 'package:animospede/widgets/custom_card.dart';
import 'package:animospede/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

Widget _buildServiceDetailsScreen(BuildContext context, int serviceId) {
  MediaQueryData mediaQueryData = MediaQuery.of(context);

  List<Servico> data = [
    Servico(
      2,
      'Passeador de cães',
      'São José do Rio Preto',
      'Busco passeador no Jardim Urano',
      'dogteste.png',
    ),
    Servico(
      2,
      'Passeador de cães',
      'São José do Rio Preto',
      'Busco passeador no Jardim Urano',
      'dogteste.png',
    ),
    Servico(
      2,
      'Passeador de cães',
      'São José do Rio Preto',
      'Busco passeador no Jardim Urano',
      'dogteste.png',
    ),
    Servico(
      2,
      'Passeador de cães',
      'São José do Rio Preto',
      'Busco passeador no Jardim Urano',
      'dogteste.png',
    ),
    Servico(
      2,
      'Passeador de cães',
      'São José do Rio Preto',
      'Busco passeador no Jardim Urano',
      'dogteste.png',
    ),
    Servico(
      2,
      'Passeador de cães',
      'São José do Rio Preto',
      'Busco passeador no Jardim Urano',
      'dogteste.png',
    ),
  ];

  return SafeArea(
    child: Scaffold(
      body: SizedBox(
        width: mediaQueryData.size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 239.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.capateste,
                      height: 239.v,
                      width: 375.h,
                      alignment: Alignment.center,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: CustomImageView(
                        imagePath: ImageConstant.backIcon,
                        height: 25.adaptSize,
                        width: 25.adaptSize,
                        radius: BorderRadius.circular(
                          12.h,
                        ),
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                          left: 8.h,
                          top: 6.v,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 13.h,
                  top: 26.v,
                ),
                child: Text(
                  "TOUR WITH YOUR PET",
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 7.v),
              Divider(
                indent: 13.h,
                endIndent: 13.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 341.h,
                  margin: EdgeInsets.only(
                    left: 13.h,
                    top: 20.v,
                    right: 20.h,
                  ),
                  child: Text(
                    "Hello. My name is James working as UI/UX designer. The user interactive UI design will help you and your website or app to convert the visitor to real customers and that will help you to make great revenue for your business...",
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style:
                        CustomTextStyles.bodyMediumRobotoBluegray70014.copyWith(
                      height: 1.36,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 13.h,
                  top: 20.v,
                ),
                child: Text(
                  "Contato",
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 7.v),
              Divider(
                indent: 13.h,
                endIndent: 13.h,
              ),
              Container(
                width: 208.h,
                margin: EdgeInsets.only(
                  left: 13.h,
                  top: 20.v,
                ),
                child: Text(
                  "Email: matheusbarreto@gmail.com\nTelefone: (17) 992862586",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style:
                      CustomTextStyles.bodyMediumRobotoBluegray70014.copyWith(
                    height: 1.36,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 30.v,
                  bottom: 20.v,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "5 ",
                                style: CustomTextStyles
                                    .titleLargeRobotoBluegray700,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.ratingStart,
                              height: 14.v,
                              width: 13.h,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(bottom: 4.v),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        right: 10.h,
                      ),
                      child: SizedBox(
                        height: 44.v,
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "R\$ 30",
                              style:
                                  CustomTextStyles.titleLargeRobotoBluegray700,
                            ),
                            SizedBox(height: 2.v),
                            Text(
                              " p/h",
                              style:
                                  CustomTextStyles.bodyMediumRobotoBluegray700,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class ServiceDetails extends StatelessWidget {
  final int serviceId;

  const ServiceDetails({required this.serviceId, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildServiceDetailsScreen(context, serviceId);
  }
}
