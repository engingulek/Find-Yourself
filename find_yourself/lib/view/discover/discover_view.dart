// ignore_for_file: depend_on_referenced_packages, library_private_types_in_public_api

import 'package:find_yourself/core/common/common_grid_list.dart';
import 'package:find_yourself/core/constants/app_constants.dart';
import 'package:find_yourself/cubit/category_cubit.dart';
import 'package:find_yourself/cubit/products_cubit.dart';
import 'package:find_yourself/cubit/returnEntity/product_cubit_entity.dart';
import 'package:find_yourself/view/cartView/cart_view.dart';
import 'package:find_yourself/view/discover/widget/category/list_category.dart';
import 'package:find_yourself/view/favoritesView/favorites_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class DiscoverView extends StatefulWidget  {
  const DiscoverView({ Key? key }) : super(key: key);

  @override
  _DiscoverViewState createState() => _DiscoverViewState();
}

class _DiscoverViewState extends State<DiscoverView> {
  @override
  void initState() {
    super.initState();
     context.read<CategoryCubit>().fetchCategories();
     context.read<ProductsCubit>().fetchPopularProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text(AppConstants.discoverNavTitle.value),
      leading: IconButton(
            icon: const Icon(Icons.favorite),
            color: Colors.red,
            onPressed: () {
              Navigator.push(context,
        MaterialPageRoute(builder: (context)=>  const FavoritesView()));
            },
          ),
          actions: [
            Stack(
              alignment: Alignment.topRight,
              children: [
             IconButton(onPressed: (){
                   Navigator.push(context,
        MaterialPageRoute(builder: (context)=>  const CartView()));
            }, icon: const Icon(Icons.shopping_basket),
            color: Colors.red,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Text("1",style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold),),
            )
            ]
          )],
      ),
      body:    Padding(
        padding: const EdgeInsets.symmetric(horizontal:15),
        child: Column(
          children: [
          const Expanded(
            flex: 2,
            child: ListCategory()
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text(AppConstants.popular.value,style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
              TextButton(onPressed: (){},
               child: Text(AppConstants.showAll.value,
               style: const TextStyle(
                fontSize: 16,
                color: Colors.red),))
          ],)),
           Expanded(
            flex: 7,
            child: BlocBuilder<ProductsCubit,ProductEntityReturn>(
              builder: (context,entity){
                if (entity.isLoading) {
                  return const Center(child: CircularProgressIndicator(),);
                }else{
                 if (entity.products.isNotEmpty){
                  return CommonGridList(products: entity.products);
                }else{
                  return  Center(child: Text(AppConstants.noProduct.value),);
                }
                }
              })
            )
        ],),
      ),
      );
  }
}
