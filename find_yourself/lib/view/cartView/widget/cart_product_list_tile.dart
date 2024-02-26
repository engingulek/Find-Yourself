import 'package:flutter/material.dart';

class CartProductListTile extends StatelessWidget {
const CartProductListTile({ Key? key }) : super(key: key);
final defaultDressImage = "https://images.unsplash.com/photo-1574655563118-3e3eab32015d?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
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
    return const Column(children: [
        Text("Name",style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black),),
        Text("Size:L",style: TextStyle(
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
          image: NetworkImage(defaultDressImage),
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
        const Text("1",style: TextStyle(color: Colors.black),),
        IconButton(
          
          color: Colors.black,
          onPressed: (){
    
        }, icon: const Icon(
          Icons.add))
      ],),
      const Text("\$120",style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold),)
    ],);
  }
}