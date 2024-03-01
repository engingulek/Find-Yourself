import 'package:find_yourself/cubit/returnEntity/cart_product_cubit_entity.dart';
import 'package:find_yourself/entity/CartProduct.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
class CartProductCubit extends Cubit<CartProductCubitEntity> {
  CartProductCubit() : super(CartProductCubitEntity({},true));

  Future<void> fetchCartProducs() async {
    emit(CartProductCubitEntity({},true));
    var url = "https://marketdelivery-172e2-default-rtdb.firebaseio.com/cart/testUserid.json";
    Response response = await Dio().get(url);
     Map<String, dynamic> jsonResponse = response.data as Map<String, dynamic>;
      Map<String, CartProduct> cartProducts = jsonResponse.map((key, value) {
        return MapEntry<String, CartProduct>(key, CartProduct.fromJson(value));
      });
      emit(CartProductCubitEntity(cartProducts,false));
  }
}