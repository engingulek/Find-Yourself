import 'package:find_yourself/view/cartView/widget/cart_product_list_tile.dart';
import 'package:flutter/material.dart';

class CartListView extends StatelessWidget {
  const CartListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(20),
         ),
         child: ListView.builder(
           itemCount: 3,
           itemBuilder: (context,index){
           return const CartProductListTile();
         }))
      );
  }
}

