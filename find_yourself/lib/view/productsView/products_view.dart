// ignore_for_file: depend_on_referenced_packages, library_private_types_in_public_api

import 'package:find_yourself/core/constants/app_constants.dart';
import 'package:find_yourself/core/common/common_grid_list.dart';
import 'package:find_yourself/cubit/products_cubit.dart';
import 'package:find_yourself/cubit/returnEntity/product_cubit_entity.dart';
import 'package:find_yourself/entity/Category.dart';
import 'package:find_yourself/view/productsView/widget/selected_category_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ProductsView extends StatefulWidget {
  const ProductsView({ Key? key, required this.selectedCategory, required this.categoryKey }) : super(key: key);
 final Category selectedCategory; 
 final String categoryKey;
  @override
  _ProductsViewState createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  @override
  void initState() {
    super.initState();
    context.read<ProductsCubit>().fetchProductsWithCategory(widget.categoryKey);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text(AppConstants.productsNavTitle.value)),
      body: Column(
        children: [
           Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SelectedCategoryInfo(selectedCategory: widget.selectedCategory,),
              ],
            ),
          ),
          
           Expanded(
            flex: 9,
            child: BlocBuilder<ProductsCubit,ProductEntityReturn>(
              builder: (context,entity){
                if (entity.isLoading) {
                  return const Center(child: CircularProgressIndicator(),);
                }else{
                 if (entity.products.isNotEmpty){
                  return CommonGridList(products: entity.products);
                }else{
                  return const Center(child: Text("No Product"),);
                }
                }
  
              })
          ),
        ],
      ),
    );
  }
}
