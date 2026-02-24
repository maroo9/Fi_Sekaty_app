import 'package:fi_sekaty_carpooling_app/fetures/mainlayout/Splash%20screen/SplashScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:fi_sekaty_carpooling_app/fetures/Auth/login/Login.dart';
import 'package:fi_sekaty_carpooling_app/fetures/Auth/register/Register.dart';
import 'package:fi_sekaty_carpooling_app/fetures/mainlayout/mainlayout.dart';
import 'package:fi_sekaty_carpooling_app/fetures/GooglemapsServices/Googlemaps.dart';
abstract class Routesmanger {
static const String splashscreen="/Splashscreen/";
static const String Mainlayout="/mainlayout/";
static const String Logins="/Login/";
static const String Rigesters="/Register/";
static const String Maps="/Googlemaps/";
  static Map<String,WidgetBuilder> routes={
    splashscreen:(context)=>Splashscreen(),
    Mainlayout :(context)=>mainlayout(),
    Logins :(context)=>Login(),
    Rigesters :(context)=>Register(),
    Maps :(context)=>Google_maps(),
};
}