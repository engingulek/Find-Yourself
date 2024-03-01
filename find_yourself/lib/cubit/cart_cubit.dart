import 'package:find_yourself/cubit/returnEntity/cart_product_cubit_entity.dart';
import 'package:find_yourself/entity/CartProduct.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
class CartProductCubit extends Cubit<CartProductCubitEntity> {
  CartProductCubit() : super(CartProductCubitEntity({},true));
   Map<String,CartProduct> _cartProducts = {};

  Future<void> fetchCartProducs() async {
    emit(CartProductCubitEntity({},true));
    var url = "https://marketdelivery-172e2-default-rtdb.firebaseio.com/cart/testUserid.json";
    Response response = await Dio().get(url);
     Map<String, dynamic> jsonResponse = response.data as Map<String, dynamic>;
      Map<String, CartProduct> cartProducts = jsonResponse.map((key, value) {
        return MapEntry<String, CartProduct>(key, CartProduct.fromJson(value));
      });
      _cartProducts = cartProducts;
      emit(CartProductCubitEntity(cartProducts,false));
  }

  Future<void> productToCartProduct(String productName, 
      int productPrice, 
      String productSize, 
      String productKey, 
      String productUrl) async{
      
   
    /*_cartProducts.values.forEach((element) {
      if(element.productId == productKey){
        if (element.size == productSize) {
          int newPiece = element.piece + 1;

        }else{
          print("size farklı eklenecek");
        }
      }else{
        print("ilk defa eklenecek");
      }
    });*/
  }
}