import 'package:find_yourself/view/productDetail/widget/navigation_view.dart';
import 'package:find_yourself/view/productDetail/widget/product_info.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
const ProductDetail({ Key? key }) : super(key: key);
final defaultDressImage = "https://images.unsplash.com/photo-1574655563118-3e3eab32015d?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
  @override
  Widget build(BuildContext context){
    return Container(
  decoration: BoxDecoration(
    image: DecorationImage(
      image: NetworkImage(defaultDressImage), 
      fit: BoxFit.cover, 
    ),
  ),
  child:  const Column(children: [
    Expanded(flex: 2, child:
    NavigationView()
     ),
    Expanded(flex: 4, child:SizedBox() ),
    Expanded(flex: 4,child: ProductInfo()
     ),
  ],)
);  
  }
}

