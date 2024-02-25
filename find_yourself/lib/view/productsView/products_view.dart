import 'package:find_yourself/core/constants/app_constants.dart';
import 'package:find_yourself/view/discover/widget/popular/popular_gridList.dart';
import 'package:find_yourself/view/productsView/mixin_products_view.dart';
import 'package:flutter/material.dart';

class ProductsView extends StatelessWidget with MixinProductsView{
  const ProductsView({Key? key}) : super(key: key);



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
                _SelectedCategoryInfo(),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _CommonButton(
                  title: AppConstants.sort,
                  onPressed: () => showBottomSheetForSort(context)
                ),
                _CommonButton(
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

//CommonButton
class _CommonButton extends StatelessWidget {
  const _CommonButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

// _SelectedCategoryInfo
class _SelectedCategoryInfo extends StatelessWidget {
  const _SelectedCategoryInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text("Category: Category One",
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold),);
  }
}
