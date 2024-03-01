import 'package:find_yourself/core/constants/app_constants.dart';
import 'package:find_yourself/cubit/cart_cubit.dart';
import 'package:find_yourself/cubit/returnEntity/cart_product_cubit_entity.dart';
import 'package:find_yourself/view/cartView/mixin/mixin_cart_view.dart';
import 'package:find_yourself/view/cartView/widget/amount_view.dart';
import 'package:find_yourself/view/cartView/widget/cart_list_view.dart';
import 'package:find_yourself/view/cartView/widget/item_count_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartView extends StatefulWidget {
  const CartView({ Key? key }) : super(key: key);

  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> with MixinCartView {

  @override
  void initState() {
    super.initState();
    fetchCartProducts(context);
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:  Text(AppConstants.myCartNavTitle.value),),
      
      body:  BlocBuilder<CartProductCubit,CartProductCubitEntity>(
        builder: (context, entity) {
          if (entity.isLoading) {
            return const Center(child: CircularProgressIndicator(),);
          }else{
            return  Column(children: [
         Expanded(flex: 1,child: ItemCount(itemCount: entity.cartProducts.length)),
         Expanded(flex: 6,child: CartListView(cartProducts: entity.cartProducts)),
         Expanded(flex: 3,child: AmountView())
      ],);
          }
        },

      )
      );
  }
}
