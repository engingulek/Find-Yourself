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
            child: Padding(
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
            )),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Expanded(
                flex: 1,
                child: Text("White Dres",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              ),
            ),
            const Expanded(
              flex: 2,
              child: Text("\$100.00",
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,fontWeight: FontWeight.bold),),
            )
          ],
        );
  }
}