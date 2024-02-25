import 'package:find_yourself/view/discover/discoverView.dart';
import 'package:flutter/material.dart';

class find_yourself_button extends StatelessWidget {
  const find_yourself_button({
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
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 50),
        child: Text(
          title,
          style: const TextStyle(
            
            color: Colors.white,
            fontWeight: FontWeight.bold,fontSize: 20)
          ),
      ));
  }
}