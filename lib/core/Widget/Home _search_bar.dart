import 'package:fi_sekaty_carpooling_app/core/Coloursmanger/Colours_manger.dart';
import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onTap;
  const HomeSearchBar({super.key, required this.controller,required this.onTap});


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 90,),
        Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(padding:  EdgeInsets.symmetric(horizontal: 16),
          child:TextFormField(
            readOnly: false,
            onTap: onTap,
            controller: controller,
            decoration: InputDecoration(
              icon: Icon(Icons.search,color: Colors.grey,),
              hintText:"Where to?",
            ),
          ),
        ),
        ),
      ],
    );


  }
}