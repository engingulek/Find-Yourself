// ignore_for_file: depend_on_referenced_packages

import 'package:find_yourself/cubit/returnEntity/product_cubit_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:find_yourself/entity/Product.dart';
import 'package:dio/dio.dart'; 

class ProductsPageCubit extends Cubit<ProductEntityReturn>{
  ProductsPageCubit() : super(ProductEntityReturn({}, true));

  Future<void> fetchProductsWithCategory(String categoryKey) async{
     emit(ProductEntityReturn({}, true));
    var url = "https://marketdelivery-172e2-default-rtdb.firebaseio.com/products.json?orderBy=\"categoryId\"&equalTo=\"$categoryKey\"";
        Response response = await Dio().get(url);
        Map<String, dynamic> jsonResponse = response.data as Map<String, dynamic>;
        Map<String, Product> products = jsonResponse.map((key, value) {
        return MapEntry<String, Product>(key, Product.fromJson(value));
      });
      emit(ProductEntityReturn(products, false));
  }
}