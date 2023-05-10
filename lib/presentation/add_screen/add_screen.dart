import 'package:flutter/material.dart';
import 'package:tracker_app_beta/core/app_export.dart';
import 'package:tracker_app_beta/widgets/app_bar/appbar_image.dart';
import 'package:tracker_app_beta/widgets/app_bar/appbar_title.dart';
import 'package:tracker_app_beta/widgets/app_bar/custom_app_bar.dart';
import 'package:tracker_app_beta/widgets/custom_button.dart';

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(70),
                leadingWidth: 37,
                leading: AppbarImage(
                    height: getVerticalSize(23),
                    width: getHorizontalSize(11),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 26, top: 16, bottom: 16),
                    onTap: () {
                      onTapArrowleft(context);
                    }),
                title: AppbarTitle(
                    text: "Новая запись", margin: getMargin(left: 12))),
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                          ColorConstant.orangeA100,
                          ColorConstant.deepOrange100,
                          ColorConstant.orange50
                        ])),
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 42, right: 42, bottom: 78),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Spacer(),
                          Text("ЧЕМ ВЫ СЕГОДНЯ ЗАНИМАЛИСЬ?",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratRomanMedium12),
                          Container(
                              height: getVerticalSize(42),
                              width: getHorizontalSize(276),
                              margin: getMargin(top: 15),
                              decoration: BoxDecoration(
                                  color: ColorConstant.whiteA700,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(20)),
                                  border: Border.all(
                                      color: ColorConstant.black900,
                                      width: getHorizontalSize(2)))),
                          Padding(
                              padding: getPadding(top: 34),
                              child: Text("КОММЕНТАРИЙ",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRomanMedium12)),
                          Container(
                              height: getVerticalSize(157),
                              width: getHorizontalSize(276),
                              margin: getMargin(top: 15),
                              decoration: BoxDecoration(
                                  color: ColorConstant.whiteA700,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(20)),
                                  border: Border.all(
                                      color: ColorConstant.black900,
                                      width: getHorizontalSize(2))))
                        ]))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(62),
                text: "ДОБАВИТЬ ЗАПИСЬ",
                margin: getMargin(left: 31, right: 31, bottom: 38),
                variant: ButtonVariant.FillOrange300,
                shape: ButtonShape.CircleBorder31,
                padding: ButtonPadding.PaddingAll21,
                fontStyle: ButtonFontStyle.MontserratRomanMedium15WhiteA700,
                onTap: () {
                  onTaptf(context);
                })));
  }

  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.calendarMainScreen);
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
