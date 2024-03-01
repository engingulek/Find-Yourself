import 'package:find_yourself/entity/Category.dart';
import 'package:flutter/material.dart';

class SelectedCategoryInfo extends StatelessWidget {
  const SelectedCategoryInfo({
    super.key, required this.selectedCategory,
  });
 final Category selectedCategory; 
  @override
  Widget build(BuildContext context) {
    return  Text("Category: ${selectedCategory.name}",
    style: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold),);
  }
}