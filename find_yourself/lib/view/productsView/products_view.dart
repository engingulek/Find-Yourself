import 'package:find_yourself/core/constants/app_constants.dart';
import 'package:find_yourself/view/discover/widget/popular/popular_gridList.dart';
import 'package:find_yourself/view/productsView/mixin/mixin_products_view.dart';
import 'package:find_yourself/view/productsView/widget/products_common_button.dart';
import 'package:find_yourself/view/productsView/widget/selected_category_info.dart';
import 'package:flutter/material.dart';


class ProductsView extends StatelessWidget with MixinProductsView{
   ProductsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppConstants.productsNavTitle)),
      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SelectedCategoryInfo(),
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

