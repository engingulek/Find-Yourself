import 'package:find_yourself/cubit/cart_cubit.dart';
import 'package:find_yourself/cubit/category_cubit.dart';
import 'package:find_yourself/cubit/popular_products_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

mixin MixinDiscoverView {
  void fetchCategories(BuildContext context) {
    context.read<CategoryCubit>().fetchCategories();
  }
  void fetchPopularProducts(BuildContext context) {
    context.read<PopularProductsCubit>().fetchPopularProducts();
  }

  void fetchCartProducts(BuildContext context){
    context.read<CartProductCubit>().fetchCartProducs();
  }
}