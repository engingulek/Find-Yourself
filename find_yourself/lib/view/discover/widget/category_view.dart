 import 'package:find_yourself/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
const CategoryView({ Key? key, 
required this.category, 
required this.defaultCategoryImage }) : super(key: key);
final String category;
final String  defaultCategoryImage;
  @override
  Widget build(BuildContext context){
   return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: context.categoryImageCircle,
                backgroundImage: NetworkImage(defaultCategoryImage),),
            Text("Category $category" ,style: Theme.of(context).textTheme.titleMedium,)
          ],);
  }
}




