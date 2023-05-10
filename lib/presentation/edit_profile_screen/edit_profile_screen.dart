import 'package:flutter/material.dart';
import 'package:tracker_app_beta/core/app_export.dart';
import 'package:tracker_app_beta/widgets/app_bar/appbar_image.dart';
import 'package:tracker_app_beta/widgets/app_bar/appbar_title.dart';
import 'package:tracker_app_beta/widgets/app_bar/custom_app_bar.dart';

class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(109),
                leadingWidth: 37,
                leading: AppbarImage(
                    height: getVerticalSize(23),
                    width: getHorizontalSize(11),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 26, top: 15, bottom: 17),
                    onTap: () {
                      onTapArrowleft1(context);
                    }),
                title: AppbarTitle(
                    text: "Личные данные", margin: getMargin(left: 12))),
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
                    padding: getPadding(left: 41, top: 6, right: 41, bottom: 6),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: getPadding(right: 20),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getSize(125),
                                            width: getSize(125),
                                            margin: getMargin(top: 30),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.whiteA700,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(62)),
                                                border: Border.all(
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    width:
                                                        getHorizontalSize(3)))),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgStar21,
                                            height: getVerticalSize(34),
                                            width: getHorizontalSize(33),
                                            margin: getMargin(
                                                left: 24, bottom: 121))
                                      ]))),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Text("Имя",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRomanRegular20)),
                          Padding(
                              padding: getPadding(top: 6),
                              child: Text("почта",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRomanRegular14)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 18, right: 68),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgStar3,
                                            height: getVerticalSize(34),
                                            width: getHorizontalSize(33),
                                            margin: getMargin(bottom: 17)),
                                        Container(
                                            width: getHorizontalSize(139),
                                            margin:
                                                getMargin(left: 36, top: 11),
                                            child: Text("СМЕНИТЬ ФОТО ПРОФИЛЯ",
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtMontserratRomanRegular16
                                                    .copyWith(
                                                        decoration:
                                                            TextDecoration
                                                                .underline)))
                                      ]))),
                          Container(
                              width: getHorizontalSize(139),
                              margin: getMargin(top: 30),
                              child: Text("СМЕНИТЬ ИМЯ ПОЛЬЗОВАТЕЛЯ",
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtMontserratRomanRegular16
                                      .copyWith(
                                          decoration:
                                              TextDecoration.underline))),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding:
                                      getPadding(left: 69, top: 4, right: 5),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 25),
                                            child: Text("СМЕНИТЬ EMAIL",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanRegular16
                                                    .copyWith(
                                                        decoration:
                                                            TextDecoration
                                                                .underline))),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgStar3,
                                            height: getVerticalSize(34),
                                            width: getHorizontalSize(33),
                                            margin:
                                                getMargin(left: 29, bottom: 11))
                                      ]))),
                          Padding(
                              padding: getPadding(top: 29),
                              child: Text("СМЕНИТЬ ПАРОЛЬ",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRomanRegular16
                                      .copyWith(
                                          decoration:
                                              TextDecoration.underline))),
                          Padding(
                              padding: getPadding(top: 31, bottom: 5),
                              child: Text("УДАЛИТЬ АККАУНТ",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRomanRegular16
                                      .copyWith(
                                          decoration:
                                              TextDecoration.underline)))
                        ])))));
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
