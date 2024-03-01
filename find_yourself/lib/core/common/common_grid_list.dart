import 'package:find_yourself/core/common/common_product_view.dart';
import 'package:find_yourself/core/common/mixin/mixin_common_grid_list.dart';
import 'package:find_yourself/entity/Product.dart';
import 'package:find_yourself/view/productDetail/product_detail.dart';
import 'package:flutter/material.dart';

class CommonGridList extends StatelessWidget with MixinCommonGridList {
const CommonGridList({ Key? key, required this.products }) : super(key: key);
final defaultDressImage = "https://images.unsplash.com/photo-1574655563118-3e3eab32015d?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
final Map<String,Product> products;
  @override
  Widget build(BuildContext context){
    return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 3.5,
            ),
            itemCount: products.values.length,
            itemBuilder: (context,index){
              var item =  getProduct(products, index);
              return   GestureDetector(
                onTap: () {
                 Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>  ProductDetail(
                    product: item.$1,
                    productKey: item.$2,

                  )));
                },
                child: CommonProductView(
                  product: item.$1,)
                  );
            },
          );
  }
}