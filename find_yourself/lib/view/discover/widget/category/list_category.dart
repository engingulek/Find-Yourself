 // ignore_for_file: depend_on_referenced_packages
import 'package:find_yourself/cubit/category_cubit.dart';

import 'package:find_yourself/view/discover/mixin/mixin_list_category.dart';
import 'package:find_yourself/view/discover/widget/category/category_view.dart';
import 'package:find_yourself/view/productsView/products_view.dart';
import 'package:flutter/material.dart';
import 'package:find_yourself/entity/Category.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListCategory extends StatelessWidget  with MixinListCategory {
const ListCategory({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
  return  BlocBuilder<CategoryCubit,Map<String,Category>>(
    builder:(context,categories){
      if (categories.isNotEmpty){
        return ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount:categories.values.length,
          itemBuilder: (context,index){
          var item = getCategory(categories,index);
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: GestureDetector(
              onTap: () {

                Navigator.push(context,
        MaterialPageRoute(builder: (context)=>  ProductsView(
          selectedCategory: item.$1,categoryKey: item.$2))
        );
              },
              child: CategoryView(category: item.$1,),
            )
          );
        });
      }else{
        return const Center();
      }
    } 
    );

  
  }
}



/*
BlocBuilder<ProductsCubit,ProductEntityReturn>(
              builder: (context,entity){
                if (entity.isLoading) {
                  return const Center(child: CircularProgressIndicator(),);
                }else{
                 if (entity.products.isNotEmpty){
                  return CommonGridList(products: entity.products);
                }else{
                  return const Center(child: Text("No Product"),);
                }
                }
  
              })
*/

/*
ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount:10,
          itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
        MaterialPageRoute(builder: (context)=>  ProductsView())
        );
              },
              child: CategoryView(
                category: "$index", 
                defaultCategoryImage: defaultCategoryImage),
            )
          );
        })

*/
