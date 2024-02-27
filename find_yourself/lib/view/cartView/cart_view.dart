import 'package:find_yourself/core/constants/app_constants.dart';
import 'package:find_yourself/view/cartView/widget/amount_view.dart';
import 'package:find_yourself/view/cartView/widget/cart_list_view.dart';
import 'package:find_yourself/view/cartView/widget/item_count_view.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
const CartView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text(AppConstants.myCartNavTitle),),
      
      body:  const Column(children: [
         Expanded(flex: 1,child: ItemCount(itemCount: 1)),
         Expanded(flex: 6,child: CartListView()),
         Expanded(flex: 3,child: AmountView())
      ],)
      
      );
  }
}





