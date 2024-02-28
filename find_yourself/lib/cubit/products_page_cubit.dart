// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:find_yourself/entity/Product.dart';
import 'package:dio/dio.dart'; 

class ProductsPageCubit extends Cubit<Map<String,Product>>{
  ProductsPageCubit() : super(<String,Product>{});

  Future<void> fetchProductsWithCategory(String categoryKey) async{
     emit({});
    var url = "https://marketdelivery-172e2-default-rtdb.firebaseio.com/products.json?orderBy=\"categoryId\"&equalTo=\"$categoryKey\"";
        Response response = await Dio().get(url);
        Map<String, dynamic> jsonResponse = response.data as Map<String, dynamic>;
        Map<String, Product> products = jsonResponse.map((key, value) {
        return MapEntry<String, Product>(key, Product.fromJson(value));
      });
      emit(products);
  }
}