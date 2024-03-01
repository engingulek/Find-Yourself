
import 'package:find_yourself/cubit/cart_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:find_yourself/entity/Product.dart';
import 'package:flutter/material.dart';


mixin MixinProductInfo {
  Color? sizeColors(List<SizeList> productSize,int index,String selectedSize){
    if (productSize[index].piece == 0) {
      return Colors.grey;
    }else {
      if (selectedSize == productSize[index].size){
        return Colors.red;
      }else{
        return Colors.white;
      }
    }
  }


  void addProductToCart(BuildContext context,
    String productName, 
      int productPrice, 
      String productSize, 
      String productKey, 
      String productUrl) {
        context.read<CartProductCubit>().productToCartProduct(
          productName, 
          productPrice, 
          productSize, 
          productKey, 
          productUrl);

  }
}