import 'package:flutter/material.dart';
import 'package:tracker_app_beta/core/app_export.dart';

class StatScreen extends StatelessWidget {
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
              begin: Alignment(
                0.5,
                0,
              ),
              end: Alignment(
                0.5,
                1,
              ),
              colors: [
                ColorConstant.lightBlue300,
                ColorConstant.orange50,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 26,
              top: 38,
              right: 26,
              bottom: 38,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      top: 32,
                    ),
                    child: Text(
                      "Cтатистика",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratRomanBold18,
                    ),
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    42,
                  ),
                  width: getHorizontalSize(
                    276,
                  ),
                  margin: getMargin(
                    top: 23,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        20,
                      ),
                    ),
                    border: Border.all(
                      color: ColorConstant.black900,
                      width: getHorizontalSize(
                        2,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 22,
                  ),
                  child: Text(
                    "ГРАФИК:",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratRomanRegular16,
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    168,
                  ),
                  width: getHorizontalSize(
                    276,
                  ),
                  margin: getMargin(
                    top: 9,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        20,
                      ),
                    ),
                    border: Border.all(
                      color: ColorConstant.black900,
                      width: getHorizontalSize(
                        2,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 23,
                  ),
                  child: Text(
                    "АНАЛИЗ МЕСЯЦА:",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratRomanSemiBold20,
                  ),
                ),
                Spacer(),
                Container(
                  height: getVerticalSize(
                    62,
                  ),
                  width: getHorizontalSize(
                    298,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.blueGray800,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        31,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
