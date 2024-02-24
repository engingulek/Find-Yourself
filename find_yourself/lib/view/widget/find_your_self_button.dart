import 'package:flutter/material.dart';

class find_yourself_button extends StatelessWidget {
  const find_yourself_button({
    super.key, required this.findYourselfButton,
  });
  final String findYourselfButton; 

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.black ),
      onPressed: (){}, 
      child:   Padding(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 50),
        child: Text(
          findYourselfButton,
          style: const TextStyle(
            
            color: Colors.white,
            fontWeight: FontWeight.bold,fontSize: 20)
          ),
      ));
  }
}