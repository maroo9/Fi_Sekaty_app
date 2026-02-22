import 'package:fi_sekaty_carpooling_app/fetures/mainlayout/Splash%20screen/SplashScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:fi_sekaty_carpooling_app/fetures/mainlayout/mainlayout.dart';
abstract class Routesmanger {
static const String splashscreen="/Splashscreen/";
static const String Mainlayout="/mainlayout/";
  static Map<String,WidgetBuilder> routes={
    splashscreen:(context)=>Splashscreen(),
    Mainlayout :(context)=>mainlayout(),
};
}