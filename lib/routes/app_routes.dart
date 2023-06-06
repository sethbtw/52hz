
import 'package:flutter/material.dart';
import 'package:tracker_app_beta/presentation/register_screen/register_screen.dart';
import 'package:tracker_app_beta/presentation/successful_reg_screen/successful_reg_screen.dart';
import 'package:tracker_app_beta/presentation/loading_screen/loading_screen.dart';
import 'package:tracker_app_beta/presentation/welcome_screen/welcome_screen.dart';
import 'package:tracker_app_beta/presentation/calendar_main_screen/calendar_main_screen.dart';
import 'package:tracker_app_beta/presentation/add_screen/add_screen.dart';
import 'package:tracker_app_beta/presentation/stat_screen/stat_screen.dart';
import 'package:tracker_app_beta/presentation/lk_screen/lk_screen.dart';
import 'package:tracker_app_beta/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:tracker_app_beta/presentation/reset_password_two_screen/reset_password_two_screen.dart';
import 'package:tracker_app_beta/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:tracker_app_beta/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String registerScreen = '/register_screen';

  static const String successfulRegScreen = '/successful_reg_screen';

  static const String loadingScreen = '/loading_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String calendarMainScreen = '/calendar_main_screen';

  static const String addScreen = '/add_screen';

  static const String statScreen = '/stat_screen';

  static const String lkScreen = '/lk_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String resetPasswordTwoScreen = '/reset_password_two_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    registerScreen: (context) => RegisterScreen(),
    successfulRegScreen: (context) => SuccessfulRegScreen(),
    loadingScreen: (context) => LoadingScreen(),
    welcomeScreen: (context) => WelcomeScreen(),
    calendarMainScreen: (context) => Calendar(),
    addScreen: (context) => AddScreen(),
    statScreen: (context) => StatScreen(),
    lkScreen: (context) => LkScreen(),
    resetPasswordScreen: (context) => ResetPasswordScreen(),
    resetPasswordTwoScreen: (context) => ResetPasswordTwoScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
