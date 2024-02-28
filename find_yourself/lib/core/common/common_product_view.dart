import 'package:find_yourself/entity/Product.dart';
import 'package:flutter/material.dart';

class CommonProductView extends StatelessWidget {
const CommonProductView({ Key? key, required this.product }) : super(key: key);
final Product product;

  @override
  Widget build(BuildContext context){
    return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           Expanded(
            flex: 8,
            child: productImage()),
             Expanded(
               flex: 1,
               child: productName(),
             ),
             Expanded(
              flex: 1,
              child: productPrice(),
            )
          ],
        );
  }

  Text productPrice() {
    return  Text("\$${product.price}",
            style: const TextStyle(
              color: Colors.red,
              fontSize: 16,fontWeight: FontWeight.bold),);
  }

  Text productName() {
    return  Text(product.name ,
              textAlign: TextAlign.left,
              style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),);
  }

  Padding productImage() {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
              Container(
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0), 
                image: DecorationImage(
                  image: NetworkImage(product.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            IconButton(onPressed: (){

            }, icon: const Icon(Icons.favorite_border),
            color: Colors.red,
            )

            ]),
          );
  }
}