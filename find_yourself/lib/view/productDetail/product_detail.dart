import 'package:find_yourself/entity/Product.dart';
import 'package:find_yourself/view/productDetail/widget/navigation_view.dart';
import 'package:find_yourself/view/productDetail/widget/product_info.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
const ProductDetail({ Key? key, required this.product, required this.productKey }) : super(key: key);
final Product product;
final String productKey; 
  @override
  Widget build(BuildContext context){
    return Container(
  decoration: BoxDecoration(
    image: DecorationImage(
      image: NetworkImage(product.imageUrl), 
      fit: BoxFit.cover, 
    ),
  ),
  child:   Column(children: [
    const Expanded(flex: 2, child:
    NavigationView()
     ),
    const Expanded(flex: 4, child:SizedBox() ),
    Expanded(flex: 4,child: ProductInfo(
      productName:  product.name, 
      productPrice: product.price, 
      productSize: product.sizeList, 
      productKey: productKey, 
      productUrl: product.imageUrl,)
     ),
  ],)
);  
  }
}

