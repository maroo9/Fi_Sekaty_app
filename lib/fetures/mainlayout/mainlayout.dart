import 'package:fi_sekaty_carpooling_app/fetures/mainlayout/tabs/Create/Create.dart';
import 'package:fi_sekaty_carpooling_app/fetures/mainlayout/tabs/Home/Home.dart';
import 'package:fi_sekaty_carpooling_app/fetures/mainlayout/tabs/Trips/Trips.dart';
import 'package:fi_sekaty_carpooling_app/fetures/mainlayout/tabs/profile/Profile.dart';
import 'package:flutter/material.dart';

import '../../core/Coloursmanger/Colours_manger.dart';
import '../../core/RoutesManger/Routesmanger.dart';
import '../../l10n/app_localizations.dart';

class mainlayout extends StatefulWidget {
  const mainlayout({super.key});

  @override
  State<mainlayout> createState() => _mainlayoutState();
}

class _mainlayoutState extends State<mainlayout> {
  final List<Widget> tab = [
    Home(),
    Profile(),
    Create(),
    Trips(),
  ];
  int selectedIndex = 0;

  void _onTap(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    AppLocalizations? appLocalizations = AppLocalizations.of(context);
    return Scaffold(
      extendBody: true,
      body: tab[selectedIndex],
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }


  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: _onTap,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colorsmanger.darkblue,
      unselectedItemColor: Colorsmanger.Grey,
      backgroundColor: Colorsmanger.White,
      items: [
        BottomNavigationBarItem(icon:  Icon(Icons.home), label: AppLocalizations.of(context)!.home),
        BottomNavigationBarItem(icon: Icon(Icons.add_circle), label:AppLocalizations.of(context)!.create_ride),
        BottomNavigationBarItem(icon: Icon(Icons.map_rounded), label: AppLocalizations.of(context)!.trip_details),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: AppLocalizations.of(context)!.profile),
      ],
    );
  }
}

