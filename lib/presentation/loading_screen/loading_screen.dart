import 'package:flutter/material.dart';
import 'package:tracker_app_beta/core/app_export.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLogowtext1,
                  height: getVerticalSize(
                    533,
                  ),
                  width: getHorizontalSize(
                    360,
                  ),
                  margin: getMargin(
                    bottom: 1,
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
