import 'package:flutter/material.dart';
import 'package:tracker_app_beta/core/app_export.dart';
import 'package:tracker_app_beta/widgets/custom_button.dart';
import 'package:tracker_app_beta/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class WelcomeScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    height: size.height,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              padding: getPadding(all: 26),
                              decoration:
                                  AppDecoration.gradientLightblue300Orange501,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: getHorizontalSize(287),
                                            margin:
                                                getMargin(top: 32, right: 20),
                                            child: Text(
                                                "Следи за своим эмоциональным здоровьем - \nэто легко с нашим приложением!",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanBold18))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(left: 58),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgStar2,
                                                      height:
                                                          getVerticalSize(39),
                                                      width:
                                                          getHorizontalSize(38),
                                                      margin:
                                                          getMargin(top: 21)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgStar2,
                                                      height:
                                                          getVerticalSize(34),
                                                      width:
                                                          getHorizontalSize(33),
                                                      margin: getMargin(
                                                          left: 8, bottom: 26))
                                                ]))),
                                    Spacer(),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: getHorizontalSize(243),
                                            margin:
                                                getMargin(left: 27, right: 37),
                                            child: Text(
                                                "Изучай статистику и выявляй причины своего самочувствия",
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtMontserratRomanMedium15))),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                            padding:
                                                getPadding(top: 11, right: 37),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 34, bottom: 3),
                                                      child: Text("ВХОД:",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtMontserratRomanRegular19)),
                                                  Container(
                                                      height:
                                                          getVerticalSize(62),
                                                      width:
                                                          getHorizontalSize(64),
                                                      margin:
                                                          getMargin(left: 20),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgStar234x33,
                                                                height:
                                                                    getVerticalSize(
                                                                        34),
                                                                width:
                                                                    getHorizontalSize(
                                                                        33),
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgStar1,
                                                                height:
                                                                    getVerticalSize(
                                                                        34),
                                                                width:
                                                                    getHorizontalSize(
                                                                        33),
                                                                alignment: Alignment
                                                                    .bottomRight)
                                                          ]))
                                                ]))),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: emailController,
                                        hintText: "Email",
                                        margin: getMargin(
                                            left: 16, top: 3, right: 16),
                                        textInputType:
                                            TextInputType.emailAddress),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: passwordController,
                                        hintText: "Пароль",
                                        margin: getMargin(
                                            left: 16, top: 8, right: 16),
                                        textInputAction: TextInputAction.done),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 14, right: 16),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapTxtEight(context);
                                                  },
                                                  child: Text("Регистрация",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratRomanLight15Black900
                                                          .copyWith(
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline))),
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapTxtNine(context);
                                                  },
                                                  child: Text("Забыли пароль?",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratRomanLight15Black900
                                                          .copyWith(
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline)))
                                            ])),
                                    CustomButton(
                                        height: getVerticalSize(42),
                                        width: getHorizontalSize(159),
                                        text: "ВОЙТИ",
                                        margin: getMargin(top: 10),
                                        onTap: () {
                                          onTaptf(context);
                                        })
                                  ]))),
                      CustomImageView(
                          imagePath: ImageConstant.img1pic,
                          height: getVerticalSize(302),
                          width: getHorizontalSize(360),
                          alignment: Alignment.topCenter,
                          margin: getMargin(top: 179))
                    ])))));
  }

  onTapTxtEight(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }

  onTapTxtNine(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.resetPasswordScreen);
  }

  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.calendarMainScreen);
  }
}
