import 'package:fi_sekaty_carpooling_app/FirebaseServices/FairebaseServices.dart';
import 'package:fi_sekaty_carpooling_app/Models/User_model.dart';
import 'package:fi_sekaty_carpooling_app/core/Widget/Home%20_search_bar.dart';
import 'package:fi_sekaty_carpooling_app/fetures/mainlayout/tabs/Trips/Trips.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/Coloursmanger/Colours_manger.dart';
import '../../../../l10n/app_localizations.dart';
class Home extends StatefulWidget {
   Home  ({super.key});
  @override
  State<Home> createState() => _HomeState();

}



class _HomeState extends State<Home> {
  late TextEditingController _searchcontroler;
  UserModel? Currentuser;
  @override
  void initState() {
    super.initState();
    _loadingvurrentuser();
    _searchcontroler=TextEditingController();
  }

  @override
  void dispose() {
    _searchcontroler.dispose();
    super.dispose();
  }
void  onsearch(String value){
  print("User typed: $value");

}
  void _loadingvurrentuser()async{
 Currentuser=await Firebaseservices.getUserById(FirebaseAuth.instance.currentUser!.uid);
setState(() {

});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorsmanger.bg,
      body: ListView(
      padding: EdgeInsets.zero,
      children: [
      // 🔹 Header Section
      Container(
      width: double.minPositive,
      height: 190,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.r)),
      color: Colorsmanger.darkblue,
      ),
      child: Column(
      children: [
      Row(
      children: [
      Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(
      AppLocalizations.of(context)!.welcome_message,
      style: GoogleFonts.dmSerifDisplay(fontSize: 20,fontWeight: FontWeight.w700,color: Colorsmanger.Whiteblue),
      ),
      const SizedBox(height: 5),
      Text(
        Currentuser?.name ?? "Loading...",
        style: GoogleFonts.dmSerifDisplay(
      fontSize: 20,
      fontWeight: FontWeight.w700,
        color: Colorsmanger.offwhite,
      ),
      ),
      Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
      children: [
      const Icon(Icons.location_on,
      color: Colorsmanger.Whiteblue),
      const SizedBox(width: 4),
      Text(
      "Cairo, Egypt ✨",
      style: GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: Colorsmanger.Whiteblue,
      ),
      ),
      ],
      ),
      ),
      ],
      ),
      const Spacer(),

      const SizedBox(width: 5),
      InkWell(
      onTap: () {},
      child: Card(
      child: Padding(
      padding: const EdgeInsets.all(8),
      child: Text("En",
      style: Theme.of(context).textTheme.bodySmall),
      ),
      ),
      ),
      ],
      ),
      TextFormField(
        controller: _searchcontroler,
        decoration: InputDecoration(

      filled: true,
      fillColor: Colors.white,
      hintText: "Search destination...",
      prefixIcon: const Icon(Icons.search),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
      )
      ),
      ),
      ],
      ),
      ),
        SizedBox(height: 20,),
        DefaultTabController(length: 2, child: Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: Colorsmanger.White,
            borderRadius: BorderRadius.circular(25),
          ),
          child: TabBar(
            labelStyle: GoogleFonts.dmSerifDisplay(fontSize: 15,fontWeight: FontWeight.w400,color: Colorsmanger.Whiteblue),
            indicator: BoxDecoration(
              color: Colorsmanger.darkblue,
              borderRadius: BorderRadius.horizontal(left: Radius.circular(50),right: Radius.circular(50),
          ),
          ),
          labelColor: Colorsmanger.Whiteblue,
          unselectedLabelColor: Colorsmanger.Grey,
          tabs: [
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
              Icon(Icons.calendar_month),
              SizedBox(width: 5,),
              Text(
                "Scheduled",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              )

            ],
              ),
            ),
            Tab( child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.electric_bolt),
              SizedBox(width: 5,),
                  Text( "Instant",   style: GoogleFonts.dmSerifDisplay(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,)
                  ),
],
          ),
        ),
          ],
          ),
        ),
      ],
        )
        ),
        SizedBox(height: 20,),

      ],
      ),
    );
  }

}