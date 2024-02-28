 import 'package:find_yourself/cubit/discover_page_cubit.dart';
import 'package:find_yourself/view/discover/mixin/mixin_list_category.dart';
import 'package:find_yourself/view/discover/widget/category/category_view.dart';
import 'package:find_yourself/view/productsView/products_view.dart';
import 'package:flutter/material.dart';
import 'package:find_yourself/entity/Category.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListCategory extends StatelessWidget  with MixinListCategory {
const ListCategory({ Key? key }) : super(key: key);
final defaultCategoryImage = "https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D";
  @override
  Widget build(BuildContext context){
  return  BlocBuilder<DiscoverPageCubit,Map<String,Category>>(
    builder:(context,categories){
      if (categories.isNotEmpty){
        return ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount:categories.values.length,
          itemBuilder: (context,index){
          var category = getCategory(categories,index);
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
        MaterialPageRoute(builder: (context)=>  ProductsView())
        );
              },
              child: CategoryView(category: category,),
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
