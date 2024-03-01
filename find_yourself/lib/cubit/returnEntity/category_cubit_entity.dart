import 'package:find_yourself/entity/Category.dart';

class CategoryCubitEntity {
    final Map<String,Category> categories;
   final bool isLoading;

  CategoryCubitEntity(this.categories, this.isLoading);
}