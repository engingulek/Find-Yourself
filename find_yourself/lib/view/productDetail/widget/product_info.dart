
import 'package:find_yourself/core/constants/app_constants.dart';
import 'package:find_yourself/core/extension/context_extension.dart';
import 'package:find_yourself/entity/Product.dart';
import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    super.key, 
    required this.productName, 
    required this.productPrice, 
    required this.productSize,
  });
  final String productName;
  final int productPrice;
  final List<SizeList>? productSize;

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
      productNameView(),
         productSizeView(),
    
         productPriceView(),
        productAddCartButton()
       
    ],),
    );
  }

  ElevatedButton productAddCartButton() {
    return ElevatedButton(onPressed: (){},  child:  Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 50),
        child: Text(
          AppConstants.addCart.value,
          style: const TextStyle(
            
            color: Colors.white,
            fontWeight: FontWeight.bold,fontSize: 20)
          ),
      ));
  }

  Text productPriceView() {
    return  Text("\$$productPrice",style: const TextStyle(
      fontSize: 30,
      color: Colors.white,decoration: TextDecoration.none,),);
  }

  Row productSizeView() {
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

  Text productNameView() {
    return  Text(productName,style: const TextStyle(
      fontSize: 30,
      color: Colors.white,decoration: TextDecoration.none,),);
  }
}



