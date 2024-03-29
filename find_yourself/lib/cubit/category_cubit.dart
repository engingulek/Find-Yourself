// ignore_for_file: depend_on_referenced_packages
import 'package:find_yourself/cubit/returnEntity/category_cubit_entity.dart';
import 'package:find_yourself/entity/Category.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

class CategoryCubit extends Cubit<CategoryCubitEntity> {
  CategoryCubit() : super(CategoryCubitEntity({}, true) );

  Future<void> fetchCategories() async {
   emit(CategoryCubitEntity({}, true));
    var url = "https://marketdelivery-172e2-default-rtdb.firebaseio.com/categories.json";
    Response response = await Dio().get(url);
     Map<String, dynamic> jsonResponse = response.data as Map<String, dynamic>;
      Map<String, Category> categories = jsonResponse.map((key, value) {
        return MapEntry<String, Category>(key, Category.fromJson(value));
      });
      emit(CategoryCubitEntity(categories, false));
  }
}