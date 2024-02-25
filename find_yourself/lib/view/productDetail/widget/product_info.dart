
import 'package:find_yourself/core/constants/app_constants.dart';
import 'package:find_yourself/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(50),
        topRight: Radius.circular(50)
        ),
      color: Colors.black87,),
      child:   Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
      productName(),
         productSize(),
    
         productPrice(),
        productAddCartButton()
       
    ],),
    );
  }

  ElevatedButton productAddCartButton() {
    return ElevatedButton(onPressed: (){},  child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 50),
        child: Text(
          AppConstants.addCart,
          style: TextStyle(
            
            color: Colors.white,
            fontWeight: FontWeight.bold,fontSize: 20)
          ),
      ));
  }

  Text productPrice() {
    return const Text("\$120.00",style: TextStyle(
      fontSize: 30,
      color: Colors.white,decoration: TextDecoration.none,),);
  }

  Row productSize() {
    return const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        CircleAvatar( 
          radius: 30,
          backgroundColor: Colors.white,
          child: Text("M",style: TextStyle(color: Colors.black)),),
         CircleAvatar(
          radius: 30,
           backgroundColor: Colors.red,
          child: Text("M",style: TextStyle(color: Colors.white),),),
          CircleAvatar(
            radius: 30,
             backgroundColor: Colors.white,
            child: Text("M",style: TextStyle(color: Colors.black)),),
            CircleAvatar(
            radius: 30,
             backgroundColor: Colors.white,
            child: Text("M",style: TextStyle(color: Colors.black)),),
            
      ],);
  }

  Text productName() {
    return const Text("White Dress",style: TextStyle(
      fontSize: 30,
      color: Colors.white,decoration: TextDecoration.none,),);
  }
}



