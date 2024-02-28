// ignore_for_file: depend_on_referenced_packages, library_private_types_in_public_api

import 'package:find_yourself/core/constants/app_constants.dart';
import 'package:find_yourself/core/common/common_grid_list.dart';
import 'package:find_yourself/cubit/products_page_cubit.dart';
import 'package:find_yourself/entity/Category.dart';
import 'package:find_yourself/entity/Product.dart';
import 'package:find_yourself/view/productsView/mixin/mixin_products_view.dart';
import 'package:find_yourself/view/productsView/widget/products_common_button.dart';
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

class _ProductsViewState extends State<ProductsView> with MixinProductsView {
  @override
  void initState() {
    super.initState();
    context.read<ProductsPageCubit>().fetchProductsWithCategory(widget.categoryKey);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppConstants.productsNavTitle)),
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
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProductsCommonButton(
                  title: AppConstants.sort,
                  onPressed: () => showBottomSheetForSort(context)
                ),
                ProductsCommonButton(
                  title: AppConstants.filter,
                  onPressed: () => showBottomSheetForFilter(context),
                ),
              ],
            ),
          ),
           Expanded(
            flex: 8,
            child: BlocBuilder<ProductsPageCubit,Map<String,Product>>(
              builder: (context,products){
                //TODO: loading animation
                if (products.isNotEmpty){
                  return CommonGridList(products: products);
                }else{
                  //TODO: Will add icon
                  return const Center(child: Text("No Product"),);
                }
              })
          ),
        ],
      ),
    );
  }
}
