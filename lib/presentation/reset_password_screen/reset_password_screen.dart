import 'package:flutter/material.dart';
import 'package:tracker_app_beta/core/app_export.dart';
import 'package:tracker_app_beta/widgets/custom_button.dart';
import 'package:tracker_app_beta/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class ResetPasswordScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
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
                child: Form(
                    key: _formKey,
                    child: Container(
                        width: double.maxFinite,
                        padding: getPadding(
                            left: 26, top: 39, right: 26, bottom: 39),
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
                                                svgPath:
                                                    ImageConstant.imgArrowleft,
                                                height: getVerticalSize(23),
                                                width: getHorizontalSize(11),
                                                margin: getMargin(bottom: 212),
                                                onTap: () {
                                                  onTapImgArrowleft(context);
                                                }),
                                            Container(
                                                height: getVerticalSize(223),
                                                width: getHorizontalSize(219),
                                                margin: getMargin(
                                                    left: 16, top: 12),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgStar2,
                                                          height:
                                                              getVerticalSize(
                                                                  39),
                                                          width:
                                                              getHorizontalSize(
                                                                  38),
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin: getMargin(
                                                              top: 27)),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgStar2,
                                                          height:
                                                              getVerticalSize(
                                                                  34),
                                                          width:
                                                              getHorizontalSize(
                                                                  33),
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin: getMargin(
                                                              left: 46)),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgLogowotext1,
                                                          height: getSize(207),
                                                          width: getSize(207),
                                                          alignment: Alignment
                                                              .bottomRight)
                                                    ]))
                                          ]))),
                              Container(
                                  width: getHorizontalSize(198),
                                  margin: getMargin(top: 8),
                                  child: Text("ВОССТАНОВЛЕНИЕ\nПАРОЛЯ:",
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: AppStyle
                                          .txtMontserratRomanRegular19)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: emailController,
                                  hintText: "Email",
                                  margin:
                                      getMargin(left: 16, top: 24, right: 16),
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.emailAddress),
                              CustomButton(
                                  height: getVerticalSize(42),
                                  text: "СБРОСИТЬ ПАРОЛЬ",
                                  margin:
                                      getMargin(left: 37, top: 25, right: 37),
                                  onTap: () {
                                          onTaptOne(context);
                                        }),
                                      
                              CustomImageView(
                                  imagePath: ImageConstant.imgStar3,
                                  height: getVerticalSize(34),
                                  width: getHorizontalSize(33),
                                  alignment: Alignment.centerRight,
                                  margin: getMargin(top: 29, right: 2)),
                              Spacer(),
                              Text("v.0.0.1_beta",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRomanLight15)
                            ]))))));
  }

  onTaptOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.resetPasswordTwoScreen);
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
