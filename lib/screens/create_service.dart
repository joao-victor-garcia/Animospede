import 'package:animospede/core/app_export.dart';
import 'package:animospede/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

Widget _buildServiceScreen(context) {
  void handleNavigateToSolicitation() {
    Navigator.pushNamed(context, '/solicitation');
  }

  void handleNavigateToDivulgation() {
    Navigator.pushNamed(context, '/divulgation');
  }

  return SafeArea(
    child: Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 16.h,
                top: 78.v,
                right: 16.h,
              ),
              decoration: AppDecoration.outlineBlack900.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder13,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Adicionar",
                            style: theme.textTheme.headlineSmall,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "selecione o tipo de serviço",
                            style: theme.textTheme.bodyLarge,
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: handleNavigateToSolicitation,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F5FA),
                        borderRadius: BorderRadius.all(
                          Radius.circular(13.h),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.solicitation,
                            height: 170.v,
                            width: 137.h,
                            radius: BorderRadius.circular(13.h),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 10.h,
                              top: 13.v,
                              bottom: 68.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Text(
                                    "Solicitação",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                                SizedBox(height: 26.v),
                                SizedBox(
                                  width: 180.h,
                                  child: Text(
                                    "Solicite um serviço para o seu Pet!",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .labelLargePoppinsGray800
                                        .copyWith(
                                      height: 1.67,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: handleNavigateToDivulgation,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F5FA),
                        borderRadius: BorderRadius.all(
                          Radius.circular(13.h),
                        ),
                      ),
                      margin: EdgeInsets.only(top: 48.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 10.h,
                              top: 20.v,
                              bottom: 53.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Divulgação",
                                  style: theme.textTheme.titleLarge,
                                ),
                                SizedBox(height: 31.v),
                                SizedBox(
                                  width: 183.h,
                                  child: Text(
                                    "Divulgue um serviço para atender os Pets de sua região!",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .labelLargePoppinsGray800
                                        .copyWith(height: 1.67),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.divulgation,
                            height: 170.v,
                            width: 137.h,
                            radius: BorderRadius.circular(13.h),
                            margin: EdgeInsets.only(left: 8.h),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class CreateService extends StatelessWidget {
  const CreateService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildServiceScreen(context);
  }
}
