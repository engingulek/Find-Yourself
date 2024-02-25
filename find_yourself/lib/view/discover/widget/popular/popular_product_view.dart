import 'package:flutter/material.dart';

class PopularProductView extends StatelessWidget {
const PopularProductView({ Key? key, required this.defaultDressImage }) : super(key: key);
final String defaultDressImage;

  @override
  Widget build(BuildContext context){
    return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           Expanded(
            flex: 8,
            child: productImage()),
             Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Expanded(
                flex: 1,
                child: productName(),
              ),
            ),
             Expanded(
              flex: 2,
              child: productPrice(),
            )
          ],
        );
  }

  Text productPrice() {
    return const Text("\$100.00",
            style: TextStyle(
              color: Colors.red,
              fontSize: 16,fontWeight: FontWeight.bold),);
  }

  Text productName() {
    return const Text("White Dress",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),);
  }

  Padding productImage() {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0), 
                image: DecorationImage(
                  image: NetworkImage(defaultDressImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
  }
}