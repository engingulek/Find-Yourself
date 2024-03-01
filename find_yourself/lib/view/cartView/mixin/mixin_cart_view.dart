import 'package:find_yourself/cubit/cart_cubit.dart';
import 'package:find_yourself/entity/CartProduct.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
mixin MixinCartView {

  void fetchCartProducts(BuildContext context) {
    context.read<CartProductCubit>().fetchCartProducs();
  }

  (double,double,double,double) amountCalculator(Map<String,CartProduct> cartProducts) {
    double subtotal = 0;
    double shipping  = 0;
    double tax = 0;
    double total = 0;
    cartProducts.forEach((key, value) {
      int price =  value.price * value.piece;
      subtotal += price;
    });

    if (subtotal <= 120.0) {
      shipping  = 5;
      subtotal + shipping;
    }

    tax = subtotal * 0.10;
    total = subtotal + tax;

    
    return (subtotal,shipping,tax,total);
  }
}