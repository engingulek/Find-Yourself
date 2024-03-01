import 'package:find_yourself/cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
mixin MixinCartView {

  void fetchCartProducts(BuildContext context) {
    context.read<CartProductCubit>().fetchCartProducs();
  }

 
}