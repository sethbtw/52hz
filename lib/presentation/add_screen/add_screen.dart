import 'package:flutter/material.dart';
import 'package:tracker_app_beta/core/app_export.dart';
import 'package:tracker_app_beta/widgets/app_bar/appbar_image.dart';
import 'package:tracker_app_beta/widgets/app_bar/appbar_title.dart';
import 'package:tracker_app_beta/widgets/app_bar/custom_app_bar.dart';
import 'package:tracker_app_beta/widgets/custom_text_form_field.dart';
import 'package:tracker_app_beta/widgets/custom_drop_down.dart';
import 'package:tracker_app_beta/widgets/custom_button.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}): super(key: key);

  @override
  _AddScreenState createState() => _AddScreenState();
}

// ignore_for_file: must_be_immutable
class _AddScreenState extends State<AddScreen> {

  List<String> dropdownItemList = ["УЧЁБА", "РАБОТА", "ХОББИ", "ОТДЫХ", "..."];
  
  double _currentValue = 0;

  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(85),
                leadingWidth: 37,
                leading: AppbarImage(
                    height: getVerticalSize(23),
                    width: getHorizontalSize(11),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 26, top: 57),
                    onTap: () {
                      onTapArrowleft(context);
                    }),
                title: AppbarTitle(
                    text: "Новая запись", margin: getMargin(left: 12, top: 58))),
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
                    padding: getPadding(left: 42, right: 42, bottom: 127),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                              padding: getPadding(top: 150),
                              child: Text("КАК ВЫ СЕБЯ ЧУВСТВУЕТЕ?",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRomanRegular16)),
                          Padding(
                              padding: getPadding(left: 9, top: 37, right: 9),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgSad1,
                                        height: getVerticalSize(38),
                                        width: getHorizontalSize(35)),
                                    Text(_currentValue.toInt().toString()+"%/100%", style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(20),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgHappy1,
                                        height: getVerticalSize(38),
                                        width: getHorizontalSize(35))
                                  ])),      
                          Slider(value: _currentValue,
                          min: 0,
                          max: 100,
                          divisions: 100,
                          //label: _currentValue.toString(),
                          activeColor: Colors.white,
                          thumbColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              _currentValue = value;
                            });
                          }),
                          Spacer(),
                          Text("ЧЕМ ВЫ СЕГОДНЯ ЗАНИМАЛИСЬ?",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratRomanMedium12),
                          CustomDropDown(
                              focusNode: FocusNode(),
                              autofocus: true,
                              icon: Container(
                                  margin: getMargin(left: 30, right: 18),
                                  child: Icon(Icons.arrow_drop_down)),
                              hintText: "...",
                              
                              margin: getMargin(top: 15),
                              items: dropdownItemList,
                              onChanged: (value) {}),
                          Padding(
                              padding: getPadding(top: 34),
                              child: Text("КОММЕНТАРИЙ",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRomanMedium12)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: commentController,
                              hintText: "Опишите причину вашего эмоционального состояния...",
                              margin: getMargin(top: 15, bottom: 5),
                              variant: TextFormFieldVariant.OutlineBlack900,
                              shape: TextFormFieldShape.RoundedBorder15,
                              padding: TextFormFieldPadding.PaddingAll11,
                              fontStyle:
                                  TextFormFieldFontStyle.MontserratRomanLight15,
                              textInputAction: TextInputAction.done,
                              maxLines: 7),
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
