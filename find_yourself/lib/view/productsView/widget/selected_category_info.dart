import 'package:flutter/material.dart';

class SelectedCategoryInfo extends StatelessWidget {
  const SelectedCategoryInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text("Category: Category One",
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold),);
  }
}