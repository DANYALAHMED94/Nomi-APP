import 'package:flutter/material.dart';
import 'package:nomi/presentation/splash_screen/splash_screen.dart';
import 'package:nomi/presentation/loginscreen_screen/loginscreen_screen.dart';
import 'package:nomi/presentation/forgetpassword_screen/forgetpassword_screen.dart';
import 'package:nomi/presentation/resetscreen_screen/resetscreen_screen.dart';
import 'package:nomi/presentation/passwordresetconfirmation_screen/passwordresetconfirmation_screen.dart';
import 'package:nomi/presentation/newpasswordscreen_screen/newpasswordscreen_screen.dart';
import 'package:nomi/presentation/newpasswordconfirmationscreen_screen/newpasswordconfirmationscreen_screen.dart';
import 'package:nomi/presentation/transscriptscreen_screen/transscriptscreen_screen.dart';
import 'package:nomi/presentation/homescreenthree_screen/homescreenthree_screen.dart';
import 'package:nomi/presentation/newgoals_screen/newgoals_screen.dart';
import 'package:nomi/presentation/currentgoals_screen/currentgoals_screen.dart';
import 'package:nomi/presentation/quicknote_screen/quicknote_screen.dart';
import 'package:nomi/presentation/chatselection_screen/chatselection_screen.dart';
import 'package:nomi/presentation/historythree_screen/historythree_screen.dart';
import 'package:nomi/presentation/historytwo_screen/historytwo_screen.dart';
import 'package:nomi/presentation/history_screen/history_screen.dart';
import 'package:nomi/presentation/calendar_screen/calendar_screen.dart';
import 'package:nomi/presentation/moodone_screen/moodone_screen.dart';
import 'package:nomi/presentation/moodtwo_screen/moodtwo_screen.dart';
import 'package:nomi/presentation/mydayone_screen/mydayone_screen.dart';
import 'package:nomi/presentation/myday_screen/myday_screen.dart';
import 'package:nomi/presentation/history_one_screen/history_one_screen.dart';
import 'package:nomi/presentation/settingscreen_screen/settingscreen_screen.dart';
import 'package:nomi/presentation/editprofile_screen/editprofile_screen.dart';
import 'package:nomi/presentation/profilescreen_screen/profilescreen_screen.dart';
import 'package:nomi/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginscreenScreen = '/loginscreen_screen';

  static const String forgetpasswordScreen = '/forgetpassword_screen';

  static const String resetscreenScreen = '/resetscreen_screen';

  static const String passwordresetconfirmationScreen =
      '/passwordresetconfirmation_screen';

  static const String newpasswordscreenScreen = '/newpasswordscreen_screen';

  static const String newpasswordconfirmationscreenScreen =
      '/newpasswordconfirmationscreen_screen';

  static const String transscriptscreenScreen = '/transscriptscreen_screen';

  static const String homescreenPage = '/homescreen_page';

  static const String homescreenthreeScreen = '/homescreenthree_screen';

  static const String newgoalsScreen = '/newgoals_screen';

  static const String currentgoalsScreen = '/currentgoals_screen';

  static const String quicknoteScreen = '/quicknote_screen';

  static const String chatselectionScreen = '/chatselection_screen';

  static const String historythreeScreen = '/historythree_screen';

  static const String historytwoScreen = '/historytwo_screen';

  static const String historyScreen = '/history_screen';

  static const String calendarScreen = '/calendar_screen';

  static const String moodoneScreen = '/moodone_screen';

  static const String moodtwoScreen = '/moodtwo_screen';

  static const String mydayoneScreen = '/mydayone_screen';

  static const String mydayScreen = '/myday_screen';

  static const String historyOneScreen = '/history_one_screen';

  static const String settingscreenScreen = '/settingscreen_screen';

  static const String editprofileScreen = '/editprofile_screen';

  static const String profilescreenScreen = '/profilescreen_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    loginscreenScreen: (context) => LoginscreenScreen(),
    forgetpasswordScreen: (context) => ForgetpasswordScreen(),
    resetscreenScreen: (context) => ResetscreenScreen(),
    passwordresetconfirmationScreen: (context) =>
        PasswordresetconfirmationScreen(),
    newpasswordscreenScreen: (context) => NewpasswordscreenScreen(),
    newpasswordconfirmationscreenScreen: (context) =>
        NewpasswordconfirmationscreenScreen(),
    transscriptscreenScreen: (context) => TransscriptscreenScreen(),
    homescreenthreeScreen: (context) => HomescreenthreeScreen(),
    newgoalsScreen: (context) => NewgoalsScreen(),
    currentgoalsScreen: (context) => CurrentgoalsScreen(),
    quicknoteScreen: (context) => QuicknoteScreen(),
    chatselectionScreen: (context) => ChatselectionScreen(),
    historythreeScreen: (context) => HistorythreeScreen(),
    historytwoScreen: (context) => HistorytwoScreen(),
    historyScreen: (context) => HistoryScreen(),
    calendarScreen: (context) => CalendarScreen(),
    moodoneScreen: (context) => MoodoneScreen(),
    moodtwoScreen: (context) => MoodtwoScreen(imagePath: ""),
    mydayoneScreen: (context) => MydayoneScreen(),
    mydayScreen: (context) => MydayScreen(),
    historyOneScreen: (context) => HistoryOneScreen(),
    settingscreenScreen: (context) => SettingscreenScreen(),
    editprofileScreen: (context) => EditprofileScreen(),
    profilescreenScreen: (context) => ProfilescreenScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
