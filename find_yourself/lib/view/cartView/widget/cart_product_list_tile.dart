import 'package:find_yourself/entity/CartProduct.dart';
import 'package:find_yourself/view/cartView/mixin/mixin_cart_product_tile.dart';
import 'package:flutter/material.dart';

class CartProductListTile extends StatelessWidget with MixinCartProductTile {
const CartProductListTile({ Key? key, required this.cartProduct }) : super(key: key);
final CartProduct cartProduct;
  @override
  Widget build(BuildContext context){
    return ListTile(title: Column(
      children: [
      Row(children: [
       productImage(),
      Padding(
            padding: const EdgeInsets.all(8.0),
            child:  Column(children: [
            Text(cartProduct.productName,style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black),),
          Column(children: sizesList().toList(),)
          
    
          
      ],)
          )
       
      ]),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ 
         Text("${pieceCount(cartProduct)} Piece:",style: const TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold)),
        Text("\$${cartProduct.price}",style: const TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold),)
        ],),
     
    ],));
  }

  Iterable<Text> sizesList() {
    return  cartProduct.sizes.map((element) {
      return Text("${element.size} : ${element.piece}",style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black));
    });
  }
  

  Container productImage() {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(cartProduct.productUrl),
          fit: BoxFit.cover,
         ),
       ),
     );
  }
  
}