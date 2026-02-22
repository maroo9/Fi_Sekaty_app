import 'package:flutter/material.dart';
import 'package:fi_sekaty_carpooling_app/core/RoutesManger/Routesmanger.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'l10n/app_localizations.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(393, 841),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context, child)=> MaterialApp(
    debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // arabic
      ],
      routes: Routesmanger.routes,
      initialRoute: Routesmanger.splashscreen,

    ),
    );

        }
  }