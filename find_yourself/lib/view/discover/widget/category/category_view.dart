 import 'package:find_yourself/core/extension/context_extension.dart';
import 'package:find_yourself/entity/Category.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
const CategoryView({ Key? key, 
required this.category, 
}) : super(key: key);
final Category category;

  @override
  Widget build(BuildContext context){
   return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: context.categoryImageCircle,
                backgroundImage: NetworkImage(category.imageUrl),),
            Text(category.name ,style: Theme.of(context).textTheme.titleMedium,)
          ],);
  }
}




