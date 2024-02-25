 import 'package:find_yourself/view/discover/widget/category_view.dart';
import 'package:flutter/material.dart';

class ListCategory extends StatelessWidget {
const ListCategory({ Key? key }) : super(key: key);
final defaultCategoryImage = "https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D";
  @override
  Widget build(BuildContext context){
  return ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount:10,
          itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CategoryView(
              category: "$index", 
              defaultCategoryImage: defaultCategoryImage)
          );
        });
  }
}

