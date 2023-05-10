import 'package:flutter/material.dart';
import 'package:tracker_app_beta/core/app_export.dart';

class LkScreen extends StatelessWidget {
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
                        getPadding(left: 26, top: 38, right: 26, bottom: 38),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(top: 34),
                              child: Text("Аккаунт",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRomanBold18)),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding:
                                      getPadding(left: 15, top: 21, right: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgStar3,
                                            height: getVerticalSize(34),
                                            width: getHorizontalSize(33),
                                            margin: getMargin(
                                                top: 238, bottom: 293)),
                                        Expanded(
                                            child: Padding(
                                                padding: getPadding(left: 2),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      right:
                                                                          15),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                        height: getSize(
                                                                            125),
                                                                        width: getSize(
                                                                            125),
                                                                        margin: getMargin(
                                                                            top:
                                                                                7),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.whiteA700,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(62)),
                                                                            border: Border.all(color: ColorConstant.whiteA700, width: getHorizontalSize(3)))),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgStar21,
                                                                        height: getVerticalSize(
                                                                            34),
                                                                        width: getHorizontalSize(
                                                                            33),
                                                                        margin: getMargin(
                                                                            left:
                                                                                24,
                                                                            bottom:
                                                                                98))
                                                                  ]))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 82,
                                                              top: 14),
                                                          child: Text("Имя",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratRomanRegular20)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 82, top: 6),
                                                          child: Text("почта",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratRomanRegular14)),
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapTxtNineteen(
                                                                context);
                                                          },
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 23,
                                                                      top: 31),
                                                              child: Text(
                                                                  "ЛИЧНЫЕ ДАННЫЕ",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtMontserratRomanRegular16))),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  224),
                                                          width:
                                                              getHorizontalSize(
                                                                  238),
                                                          margin:
                                                              getMargin(top: 5),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgStar3,
                                                                    height:
                                                                        getVerticalSize(
                                                                            34),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            33),
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomRight,
                                                                    margin: getMargin(
                                                                        bottom:
                                                                            79)),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft,
                                                                    child: Padding(
                                                                        padding: getPadding(left: 26, bottom: 5),
                                                                        child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                          Text(
                                                                              "ОБРАТНАЯ СВЯЗЬ",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtMontserratRomanRegular16),
                                                                          Padding(
                                                                              padding: getPadding(top: 6),
                                                                              child: Text("ВЫХОД", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRomanRegular16.copyWith(decoration: TextDecoration.underline)))
                                                                        ]))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft,
                                                                    child: Container(
                                                                        height: getSize(207),
                                                                        width: getSize(207),
                                                                        child: Stack(alignment: Alignment.topCenter, children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgLogowotext1,
                                                                              height: getSize(207),
                                                                              width: getSize(207),
                                                                              alignment: Alignment.center),
                                                                          Align(
                                                                              alignment: Alignment.topCenter,
                                                                              child: Padding(padding: getPadding(top: 6), child: Text("ИСТОРИЯ", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRomanRegular16)))
                                                                        ]))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                45),
                                                                        child: Text(
                                                                            "ИНТЕГРАЦИИ",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMontserratRomanRegular16)))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 62,
                                                              top: 69),
                                                          child: Text(
                                                              "v.0.0.1_beta",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratRomanLight15))
                                                    ])))
                                      ]))),
                          Container(
                              height: getVerticalSize(62),
                              width: getHorizontalSize(298),
                              margin: getMargin(left: 5, top: 18),
                              decoration: BoxDecoration(
                                  color: ColorConstant.blueGray800,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(31))))
                        ])))));
  }

  onTapTxtNineteen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.editProfileScreen);
  }
}
