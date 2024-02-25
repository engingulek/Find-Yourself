import 'package:flutter/material.dart';

class NavigationView extends StatelessWidget {
  const NavigationView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      IconButton(
        onPressed: (){
          Navigator.pop(context);
        }, icon:const Icon(
          Icons.arrow_back_ios),
          iconSize: 30.0
          ),
      IconButton(
        onPressed: (){}, icon:const Icon(
        Icons.favorite_border),
              iconSize: 30.0,),
       
    ],);
  }
}