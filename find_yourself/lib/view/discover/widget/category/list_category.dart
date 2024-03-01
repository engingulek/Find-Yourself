 // ignore_for_file: depend_on_referenced_packages
import 'package:find_yourself/cubit/category_cubit.dart';
import 'package:find_yourself/cubit/returnEntity/category_cubit_entity.dart';

import 'package:find_yourself/view/discover/mixin/mixin_list_category.dart';
import 'package:find_yourself/view/discover/widget/category/category_view.dart';
import 'package:find_yourself/view/productsView/products_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListCategory extends StatelessWidget  with MixinListCategory {
const ListCategory({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
  return  BlocBuilder<CategoryCubit,CategoryCubitEntity>(
    builder:(context,entity){
      if (entity.categories.isNotEmpty){
        return ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount:entity.categories.values.length,
          itemBuilder: (context,index){
          var item = getCategory(entity.categories,index);
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