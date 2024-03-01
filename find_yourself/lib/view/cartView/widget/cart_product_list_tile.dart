import 'package:find_yourself/entity/CartProduct.dart';
import 'package:flutter/material.dart';

class CartProductListTile extends StatelessWidget {
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
          child: productNameAndSize(),
        ),
      ]),
       productPriceAndButtons()
    ],));
  }
  Column productNameAndSize() {
    return  Column(children: [
        Text(cartProduct.productName,style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black),),
        Text("Size:${cartProduct.size}",style: const TextStyle(
          color: Colors.grey,
           fontSize: 15,
          fontWeight: FontWeight.normal
          ))
      ],);
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
  Row productPriceAndButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Row(children: [
        IconButton(onPressed: (){
    
        }, icon: const Icon(Icons.remove)),
         Text("${cartProduct.piece}",style: const TextStyle(color: Colors.black),),
        IconButton(
          
          color: Colors.black,
          onPressed: (){
    
        }, icon: const Icon(
          Icons.add))
      ],),
       Text("\$${cartProduct.price}",style: const TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold),)
    ],);
  }
}