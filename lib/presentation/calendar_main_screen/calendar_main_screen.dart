import 'package:flutter/material.dart';
import 'package:tracker_app_beta/core/app_export.dart';
import 'package:tracker_app_beta/widgets/custom_button.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

class CalendarMainScreen extends StatelessWidget {
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
                          ColorConstant.orangeA100,
                          ColorConstant.deepOrange100,
                          ColorConstant.orange50
                        ])),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 26, top: 38, right: 26, bottom: 38),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 34),
                                  child: Text("Календарь",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtMontserratRomanBold18))),
                          CustomImageView(
                              imagePath: ImageConstant.imgStar21,
                              height: getVerticalSize(34),
                              width: getHorizontalSize(33),
                              margin: getMargin(top: 21, right: 35)),
                          Spacer(),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(left: 15, right: 12),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgStar3,
                                            height: getVerticalSize(34),
                                            width: getHorizontalSize(33),
                                            margin: getMargin(bottom: 21)),
                                        CustomButton(
                                            height: getVerticalSize(42),
                                            width: getHorizontalSize(159),
                                            text: "ЗАПИСЬ",
                                            margin: getMargin(top: 13),
                                            variant:
                                                ButtonVariant.FillOrange300,
                                            fontStyle: ButtonFontStyle
                                                .MontserratRomanMedium15WhiteA700,
                                            onTap: () {
                                              onTaptf(context);
                                            })
                                      ]))),
                          CustomImageView(
                              imagePath: ImageConstant.imgStar3,
                              height: getVerticalSize(34),
                              width: getHorizontalSize(33),
                              margin: getMargin(top: 71, right: 20)),
                          Container(
                              height: getVerticalSize(62),
                              width: getHorizontalSize(298),
                              margin: getMargin(top: 186, right: 5),
                              decoration: BoxDecoration(
                                  color: ColorConstant.orange300,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(31))))
                        ]))),
                        bottomNavigationBar:  DotNavigationBar(

                        )
                      ));
  }

  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addScreen);
  }
}
