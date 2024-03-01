import 'package:flutter/material.dart';

class ItemCount extends StatelessWidget {
  const ItemCount({
    super.key, required this.itemCount,
  });
 final int itemCount;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 5),
      child: Container(
       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(20),
         ),
         child:  Center(child: Text("$itemCount Item(s)",
         style: const TextStyle(
           color: Colors.black,
           fontSize: 18,
           fontWeight: FontWeight.bold),
         
         ))
      ),
    );
  }
}