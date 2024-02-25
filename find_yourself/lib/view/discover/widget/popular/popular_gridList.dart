
import 'package:find_yourself/view/discover/widget/popular/popular_product_view.dart';
import 'package:find_yourself/view/productDetail/product_detail.dart';
import 'package:flutter/material.dart';

class CommonGridList extends StatelessWidget {
const CommonGridList({ Key? key }) : super(key: key);
final defaultDressImage = "https://images.unsplash.com/photo-1574655563118-3e3eab32015d?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
  @override
  Widget build(BuildContext context){
    return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 3.5,
            ),
            itemCount: 10,
            itemBuilder: (context,indeks){
              
              return   GestureDetector(
                onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetail()));
                },
                child: PopularProductView(defaultDressImage: defaultDressImage));
                
             
            },
          );
  }
}