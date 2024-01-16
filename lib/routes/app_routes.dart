import 'package:flutter/material.dart';
import 'package:mohit_s_application17/presentation/iphone_14_pro_max_one_screen/iphone_14_pro_max_one_screen.dart';
import 'package:mohit_s_application17/presentation/frame_eight_screen/frame_eight_screen.dart';
import 'package:mohit_s_application17/presentation/iphone_14_pro_max_twentysix_screen/iphone_14_pro_max_twentysix_screen.dart';
import 'package:mohit_s_application17/presentation/iphone_14_pro_max_twentyseven_screen/iphone_14_pro_max_twentyseven_screen.dart';
import 'package:mohit_s_application17/presentation/iphone_14_pro_max_thirtytwo_screen/iphone_14_pro_max_thirtytwo_screen.dart';
import 'package:mohit_s_application17/presentation/iphone_14_pro_max_twelve_screen/iphone_14_pro_max_twelve_screen.dart';
import 'package:mohit_s_application17/presentation/iphone_14_pro_max_twentyfive_screen/iphone_14_pro_max_twentyfive_screen.dart';
import 'package:mohit_s_application17/presentation/iphone_14_pro_max_thirtythree_screen/iphone_14_pro_max_thirtythree_screen.dart';
import 'package:mohit_s_application17/presentation/iphone_14_pro_max_thirty_screen/iphone_14_pro_max_thirty_screen.dart';
import 'package:mohit_s_application17/presentation/iphone_14_pro_max_thirtyfour_screen/iphone_14_pro_max_thirtyfour_screen.dart';
import 'package:mohit_s_application17/presentation/iphone_14_pro_max_thirtyfive_screen/iphone_14_pro_max_thirtyfive_screen.dart';
import 'package:mohit_s_application17/presentation/iphone_14_pro_max_thirtysix_screen/iphone_14_pro_max_thirtysix_screen.dart';
import 'package:mohit_s_application17/presentation/iphone_14_pro_max_thirtyseven_screen/iphone_14_pro_max_thirtyseven_screen.dart';
import 'package:mohit_s_application17/presentation/iphone_14_pro_max_thirtyeight_screen/iphone_14_pro_max_thirtyeight_screen.dart';
import 'package:mohit_s_application17/presentation/iphone_14_pro_max_thirtyone_screen/iphone_14_pro_max_thirtyone_screen.dart';
import 'package:mohit_s_application17/presentation/iphone_14_pro_max_thirtynine_screen/iphone_14_pro_max_thirtynine_screen.dart';
import 'package:mohit_s_application17/presentation/iphone_14_pro_max_forty_screen/iphone_14_pro_max_forty_screen.dart';
import 'package:mohit_s_application17/presentation/iphone_14_pro_max_fortyone_screen/iphone_14_pro_max_fortyone_screen.dart';
import 'package:mohit_s_application17/presentation/iphone_14_pro_max_thirteen_screen/iphone_14_pro_max_thirteen_screen.dart';
import 'package:mohit_s_application17/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:mohit_s_application17/pages/login_page.dart';
import 'package:mohit_s_application17/pages/main_page.dart';
import 'package:mohit_s_application17/pages/splash_page.dart';
import 'package:mohit_s_application17/pages/register_page.dart';

class AppRoutes {
  static const String iphone14ProMaxOneScreen = '/iphone_14_pro_max_one_screen';

  static const String frameEightScreen = '/frame_eight_screen';

  static const String iphone14ProMaxTwentysixScreen =
      '/iphone_14_pro_max_twentysix_screen';

  static const String iphone14ProMaxTwentysevenScreen =
      '/iphone_14_pro_max_twentyseven_screen';

  static const String iphone14ProMaxThirtytwoScreen =
      '/iphone_14_pro_max_thirtytwo_screen';

  static const String iphone14ProMaxTwelveScreen =
      '/iphone_14_pro_max_twelve_screen';

  static const String iphone14ProMaxTwentyfiveScreen =
      '/iphone_14_pro_max_twentyfive_screen';

  static const String iphone14ProMaxThirtythreeScreen =
      '/iphone_14_pro_max_thirtythree_screen';

  static const String iphone14ProMaxThirtyScreen =
      '/iphone_14_pro_max_thirty_screen';

  static const String iphone14ProMaxThirtyfourScreen =
      '/iphone_14_pro_max_thirtyfour_screen';

  static const String iphone14ProMaxThirtyfiveScreen =
      '/iphone_14_pro_max_thirtyfive_screen';

  static const String iphone14ProMaxThirtysixScreen =
      '/iphone_14_pro_max_thirtysix_screen';

  static const String iphone14ProMaxThirtysevenScreen =
      '/iphone_14_pro_max_thirtyseven_screen';

  static const String iphone14ProMaxThirtyeightScreen =
      '/iphone_14_pro_max_thirtyeight_screen';

  static const String iphone14ProMaxThirtyoneScreen =
      '/iphone_14_pro_max_thirtyone_screen';

  static const String iphone14ProMaxThirtynineScreen =
      '/iphone_14_pro_max_thirtynine_screen';

  static const String iphone14ProMaxFortyScreen =
      '/iphone_14_pro_max_forty_screen';

  static const String iphone14ProMaxFortyoneScreen =
      '/iphone_14_pro_max_fortyone_screen';

  static const String iphone14ProMaxThirteenScreen =
      '/iphone_14_pro_max_thirteen_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    //iphone14ProMaxThirteenScreen:(context) => Iphone14ProMaxThirteenScreen(),
    iphone14ProMaxOneScreen: (context) => Iphone14ProMaxOneScreen(),
    frameEightScreen: (context) => FrameEightScreen(),
    iphone14ProMaxTwentysixScreen: (context) => Iphone14ProMaxTwentysixScreen(),
    iphone14ProMaxTwentysevenScreen: (context) =>
        Iphone14ProMaxTwentysevenScreen(),
    iphone14ProMaxThirtytwoScreen: (context) => Iphone14ProMaxThirtytwoScreen(),
    iphone14ProMaxTwelveScreen: (context) => Iphone14ProMaxTwelveScreen(),
    iphone14ProMaxTwentyfiveScreen: (context) =>
        Iphone14ProMaxTwentyfiveScreen(),
    iphone14ProMaxThirtythreeScreen: (context) =>
        Iphone14ProMaxThirtythreeScreen(),
    iphone14ProMaxThirtyScreen: (context) => Iphone14ProMaxThirtyScreen(),
    iphone14ProMaxThirtyfourScreen: (context) =>
        Iphone14ProMaxThirtyfourScreen(),
    iphone14ProMaxThirtyfiveScreen: (context) =>
        Iphone14ProMaxThirtyfiveScreen(),
    iphone14ProMaxThirtysixScreen: (context) => Iphone14ProMaxThirtysixScreen(),
    iphone14ProMaxThirtysevenScreen: (context) =>
        Iphone14ProMaxThirtysevenScreen(),
    iphone14ProMaxThirtyeightScreen: (context) =>
        Iphone14ProMaxThirtyeightScreen(),
    iphone14ProMaxThirtyoneScreen: (context) => Iphone14ProMaxThirtyoneScreen(),
    iphone14ProMaxThirtynineScreen: (context) =>
        Iphone14ProMaxThirtynineScreen(),
    iphone14ProMaxFortyScreen: (context) => Iphone14ProMaxFortyScreen(),
    iphone14ProMaxFortyoneScreen: (context) => Iphone14ProMaxFortyoneScreen(),
    iphone14ProMaxThirteenScreen: (context) => Iphone14ProMaxThirteenScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    // '/': (context) => SplashPage(),
    '/login': (context) => LoginPage(),
    '/main': (context) => MainPage(),
    '/register': (context) => RegisterPage(),
  };
}
