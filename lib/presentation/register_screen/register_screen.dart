import 'package:flutter/material.dart';
import 'package:tracker_app_beta/core/app_export.dart';
import 'package:tracker_app_beta/widgets/custom_button.dart';
import 'package:tracker_app_beta/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class RegisterScreen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController rpasswordController = TextEditingController();

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
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: Container(
                                                              height:
                                                                  getSize(207),
                                                              width:
                                                                  getSize(207),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomLeft,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgLogowotext1,
                                                                        height: getSize(
                                                                            207),
                                                                        width: getSize(
                                                                            207),
                                                                        alignment:
                                                                            Alignment.center),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomLeft,
                                                                        child: Padding(
                                                                            padding:
                                                                                getPadding(left: 24, bottom: 8),
                                                                            child: Text("РЕГИСТРАЦИЯ:", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRomanRegular19)))
                                                                  ]))),
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
                                                              left: 46))
                                                    ]))
                                          ]))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: nameController,
                                  hintText: "Имя",
                                  margin:
                                      getMargin(left: 16, top: 22, right: 16)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: emailController,
                                  hintText: "Email",
                                  margin:
                                      getMargin(left: 16, top: 9, right: 16),
                                  textInputType: TextInputType.emailAddress),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: passwordController,
                                  hintText: "Пароль",
                                  margin:
                                      getMargin(left: 16, top: 9, right: 16),
                                  textInputAction: TextInputAction.done),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: rpasswordController,
                                  hintText: "Повторите пароль",
                                  margin:
                                      getMargin(left: 16, top: 9, right: 16),
                                  textInputAction: TextInputAction.done),
                              
                              CustomImageView(
                                  imagePath: ImageConstant.imgStar3,
                                  height: getVerticalSize(34),
                                  width: getHorizontalSize(33),
                                  alignment: Alignment.centerRight,
                                  margin: getMargin(right: 2)),
                              CustomButton(
                                  height: getVerticalSize(42),
                                  text: "ЗАРЕГИСТРИРОВАТЬСЯ",
                                  margin: getMargin(left: 37, right: 37),
                                  onTap: () {
                                    onTaptf(context);
                                  }),
                              Spacer(),
                              Text("v.0.0.1_beta",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRomanLight15)
                            ]))))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.successfulRegScreen);
  }
}
