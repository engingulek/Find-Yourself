import 'package:find_yourself/entity/CartProduct.dart';
import 'package:find_yourself/view/cartView/mixin/mixin_cart_list_view.dart';
import 'package:find_yourself/view/cartView/widget/cart_product_list_tile.dart';
import 'package:flutter/material.dart';

class CartListView extends StatelessWidget with MixinCartListView {
  const CartListView({
    super.key, required this.cartProducts,
  });
  final Map<String,CartProduct> cartProducts; 
  
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
           itemCount: cartProducts.length,
           itemBuilder: (context,index){
            var item = getCartProduct(cartProducts, index);
           return  CartProductListTile(cartProduct: item.$1);
         }))
      );
  }
}

