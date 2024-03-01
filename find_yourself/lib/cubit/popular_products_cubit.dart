import 'package:find_yourself/cubit/returnEntity/product_cubit_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:find_yourself/entity/Product.dart';
import 'package:dio/dio.dart'; 

class PopularProductsCubit extends Cubit<ProductEntityReturn>{ 
PopularProductsCubit() : super(ProductEntityReturn({}, true));

Future<void> fetchPopularProducts() async {
      emit(ProductEntityReturn({}, true));
    var url = "https://marketdelivery-172e2-default-rtdb.firebaseio.com/products.json";
        Response response = await Dio().get(url);
        Map<String, dynamic> jsonResponse = response.data as Map<String, dynamic>;
        Map<String, Product> products = jsonResponse.map((key, value) {
        return MapEntry<String, Product>(key, Product.fromJson(value));
      });
      
        var sortedProductEntries = products.entries.toList()
    ..sort((a, b) => b.value.salesCount.compareTo(a.value.salesCount));


  Map<String, Product> popularProducts = Map.fromEntries(sortedProductEntries);

      emit(ProductEntityReturn(popularProducts, false));
  }
}