import 'package:find_yourself/core/constants/app_constants.dart';
import 'package:find_yourself/view/cartView/widget/amount_view.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
const CartView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text(AppConstants.myCartNavTitle),),
      
      body:  Column(children: [
        const Expanded(flex: 1,child: Center(
          child: Text("1 ${AppConstants.itemTitle}",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),

          ))),
        const Expanded(flex: 6,child: Center(child: Text("1 Item(s)"))),
        Expanded(flex: 3,child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            ),
            child: const AmountView()
)
        
        )
      ],)
      
      );
  }
}

