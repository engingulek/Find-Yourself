import 'package:find_yourself/core/constants/app_constants.dart';
import 'package:flutter/material.dart';

class AmountView extends StatelessWidget {
  const AmountView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          primaryText(AppConstants.subtotal.value),
         primaryText("\$120"),
        ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            primaryText(AppConstants.shipping.value),
            primaryText("\$5"),
        ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             primaryText(AppConstants.tax.value),
             primaryText("\$5"),
        ],),
        const Divider(
      color: Colors.grey,
      thickness: 2
    ),
     Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             primaryText(AppConstants.total.value),
          totalText(130)
        ],),
      ],),
    )
        );
      
  }

  Text totalText(double amount) {
    return Text("\$$amount",style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold),);
  }

  Text primaryText(String text) {
    return Text(text,style: const TextStyle(
          fontSize: 16,
          color: Colors.black),);
  }
}