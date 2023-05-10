import 'package:flutter/material.dart';
import 'package:tracker_app_beta/core/app_export.dart';

class ResetPasswordTwoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                          ColorConstant.lightBlue300,
                          ColorConstant.orange50
                        ])),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 26, top: 39, right: 26, bottom: 39),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 29, right: 50),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgArrowleft,
                                            height: getVerticalSize(23),
                                            width: getHorizontalSize(11),
                                            margin: getMargin(bottom: 212),
                                            onTap: () {
                                              onTapImgArrowleft(context);
                                            }),
                                        Container(
                                            height: getVerticalSize(223),
                                            width: getHorizontalSize(219),
                                            margin:
                                                getMargin(left: 16, top: 12),
                                            child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgStar2,
                                                      height:
                                                          getVerticalSize(39),
                                                      width:
                                                          getHorizontalSize(38),
                                                      alignment:
                                                          Alignment.topLeft,
                                                      margin:
                                                          getMargin(top: 27)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgStar2,
                                                      height:
                                                          getVerticalSize(34),
                                                      width:
                                                          getHorizontalSize(33),
                                                      alignment:
                                                          Alignment.topLeft,
                                                      margin:
                                                          getMargin(left: 46)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgLogowotext1,
                                                      height: getSize(207),
                                                      width: getSize(207),
                                                      alignment:
                                                          Alignment.bottomRight)
                                                ]))
                                      ]))),
                          Container(
                              width: getHorizontalSize(198),
                              margin: getMargin(top: 8),
                              child: Text("ВОССТАНОВЛЕНИЕ\nПАРОЛЯ:",
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtMontserratRomanRegular19)),
                          Container(
                              height: getVerticalSize(186),
                              width: getHorizontalSize(297),
                              margin: getMargin(top: 23),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text("Отправить повторно",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRomanLight15Black900
                                                .copyWith(
                                                    decoration: TextDecoration
                                                        .underline))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            height: getVerticalSize(172),
                                            width: getHorizontalSize(297),
                                            child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgStar3,
                                                      height:
                                                          getVerticalSize(34),
                                                      width:
                                                          getHorizontalSize(33),
                                                      alignment: Alignment
                                                          .bottomRight),
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  291),
                                                          child: Text(
                                                              "Мы отправили письмо на указанный электронный адрес. Перейдите по ссылке в письме для сброса пароля.\n\nЕсли письма нет во входящих, то попробуйте найти его в других папках (например “Спам”, “Социальные сети” или другие).",
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtMontserratRomanMedium15)))
                                                ])))
                                  ])),
                          Spacer(),
                          Text("v.0.0.1_beta",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratRomanLight15)
                        ])))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
