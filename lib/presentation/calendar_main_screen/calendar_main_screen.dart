import 'package:flutter/material.dart';
import 'package:tracker_app_beta/core/app_export.dart';
import 'package:tracker_app_beta/widgets/custom_button.dart';
import 'package:table_calendar/table_calendar.dart';
//import 'package:dot_navigation_bar/dot_navigation_bar.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  
  //Map<DateTime, List<Event>> selectedEvents;
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  //TextEditingController _eventController = TextEditingController();

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
                              child: Container(
                                width: getHorizontalSize(287),
                                margin:
                                    getMargin(top: 20, right: 20),
                                child: Text("Календарь",
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRomanBold18))),                       
                          TableCalendar(
                            locale: 'ru_RU',
                            focusedDay: selectedDay,
                            firstDay: DateTime(2023),
                            lastDay: DateTime(2050),
                            calendarFormat: format,
                            onFormatChanged: (CalendarFormat _format) {
                              setState(() {
                                format = _format;
                              });
                            },
                            startingDayOfWeek: StartingDayOfWeek.monday,
                            daysOfWeekVisible: true,

                            //Day Changed
                            onDaySelected: (DateTime selectDay, DateTime focusDay) {
                              setState(() {
                                selectedDay = selectDay;
                                focusedDay = focusDay;
                              });
                              print(focusedDay);
                            },
                            selectedDayPredicate: (DateTime date) {
                              return isSameDay(selectedDay, date);
                            },

                            //eventLoader: _getEventsfromDay,

                            //To style the Calendar
                            calendarStyle: CalendarStyle(
                              isTodayHighlighted: true,
                              selectedDecoration: BoxDecoration(
                                //color: Color(0xffF885AB),
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white)
                              ),
                              selectedTextStyle: TextStyle(color: Colors.white),
                              todayDecoration: BoxDecoration(
                                //color: Color(0xffF885AB), //выбираемый цвет
                                shape: BoxShape.circle,
                                //border: Border.all(color: Colors.white)
                              
                              ),
                              defaultDecoration: BoxDecoration(
                              shape: BoxShape.circle
                           
                              ),
                              weekendDecoration: BoxDecoration(
                              shape: BoxShape.circle
                            
                              ),
                            ),
                            headerStyle: HeaderStyle(
                              formatButtonVisible: false,
                              titleCentered: true,
                              titleTextStyle: AppStyle.txtMontserratRomanBold18, 
                            ),
                          ),
                          //..._getEventsfromDay(selectedDay).map(
                            //(Event event) => ListTile(
                              //title: Text(
                                //event.title,
                              //),
                            //),
                          //),
                          CustomButton(
                            height: getVerticalSize(42),
                            width: getHorizontalSize(159),
                            text: "ЗАПИСЬ",
                            margin: getMargin(top: 15),
                            variant:
                              ButtonVariant.FillOrange300,
                              fontStyle: ButtonFontStyle
                                .MontserratRomanMedium15WhiteA700,
                              onTap: () {
                                onTaptf(context);
                              }),                          
                          
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
                                        
                                        
                                      ]))),
                         
                         
                        
                        ]))),
                        //bottomNavigationBar:  DotNavigationBar(
                          

                        //)
                      ));
  }

  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addScreen);
  }
}
