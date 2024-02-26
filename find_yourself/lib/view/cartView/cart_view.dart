import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
const CartView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("My Cart"),),
      body: Text("My Cart"),
      
      );
  }
}