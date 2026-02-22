import 'package:flutter/material.dart';
import 'package:fi_sekaty_carpooling_app/core/AssetsManger/Assets_manger.dart';
import 'package:fi_sekaty_carpooling_app/core/RoutesManger/Routesmanger.dart';
import '../../../core/Coloursmanger/Colours_manger.dart';
class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
@override
  void initState() {
    super.initState();
    nevigatestate();
  }
  void nevigatestate(){
  Future.delayed(Duration( seconds: 3),(){
    Navigator.pushReplacementNamed(context,Routesmanger.Mainlayout );
      }
  );
}
Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor: Colorsmanger.Whiteblue,
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        SizedBox(height: 200,),
      Container(
          width: 200,
          height: 250,
          child: Image(image: AssetImage(Imagemanger.logoimage,)
            ,)

      ),
      ],
      ),
  );
  }
}
