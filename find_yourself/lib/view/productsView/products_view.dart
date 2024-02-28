import 'package:find_yourself/core/constants/app_constants.dart';
import 'package:find_yourself/core/common/common_grid_list.dart';
import 'package:find_yourself/entity/Category.dart';
import 'package:find_yourself/view/productsView/mixin/mixin_products_view.dart';
import 'package:find_yourself/view/productsView/widget/products_common_button.dart';
import 'package:find_yourself/view/productsView/widget/selected_category_info.dart';
import 'package:flutter/material.dart';


class ProductsView extends StatelessWidget with MixinProductsView{
   ProductsView({Key? key, required this.selectedCategory}) : super(key: key);
   final Category selectedCategory; 
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
                SelectedCategoryInfo(selectedCategory: selectedCategory,),
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
          const Expanded(
            flex: 8,
            child: CommonGridList(),
          ),
        ],
      ),
    );
  }
}


// _SelectedCategoryInfo

