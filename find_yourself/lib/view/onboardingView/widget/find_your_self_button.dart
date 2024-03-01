import 'package:find_yourself/view/discover/discover_view.dart';
import 'package:flutter/material.dart';

class FindYourSelfButton extends StatelessWidget {
  const FindYourSelfButton({
    super.key, required this.title,
  });
  final String title; 

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.black ),
      onPressed: (){
        Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context)=> const DiscoverView())
        );
      }, 
      child:   Padding(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 50),
        child: Text(
          title,
          style: const TextStyle(
            
            color: Colors.white,
            fontWeight: FontWeight.bold,fontSize: 20)
          ),
      ));
  }
}