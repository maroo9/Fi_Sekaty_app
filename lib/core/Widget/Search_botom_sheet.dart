import 'package:flutter/material.dart';
class SearchBotomSheet extends StatelessWidget {
  final TextEditingController controller;

  const SearchBotomSheet({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(initialChildSize:0.8 ,

      minChildSize: 0.4,
    maxChildSize: 0.9,
    builder: (context,scrollController){
      return Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
        ),
      ),
        alignment: Alignment.topCenter,
        child: ListView(

          controller: scrollController,
          children: [
          Card(
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(padding:  EdgeInsets.symmetric(horizontal: 16),
            child:TextFormField(
              controller: controller,
              decoration: InputDecoration(
                hintText:"current location",
              ),
            ),
          ),
        ),
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(padding:  EdgeInsets.symmetric(horizontal: 16),
                child:TextFormField(
                  controller: controller,
                  decoration: InputDecoration(
                    icon: Icon(Icons.search,color: Colors.grey,),
                    hintText:"Where to?",
                  ),
                ),
              ),
            ),
          ],
        ),
      );

      },

    );
  }
}
