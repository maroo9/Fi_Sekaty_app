import 'package:flutter/material.dart';
import 'package:fi_sekaty_carpooling_app/core/AssetsManger/Assets_manger.dart';
import 'package:fi_sekaty_carpooling_app/core/RoutesManger/Routesmanger.dart';
class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  void nevigatestate(){
  Future.delayed(Duration( seconds: 3),(){
    Navigator.pushReplacementNamed(context,Routesmanger.Mainlayout );
      }
  );
}
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 200,
          height: 200,
          child: Image(image:  AssetImage(Imagemanger.logoimage)),
        )
       
        ],
    );
  }
}
