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
        Map<String,dynamic> data = {};
      
        
        _cartProducts.values.forEach((element) async {
          if (element.productId == productKey){
           
            for (int i = 0; i < element.sizes.length; i++){
              if (element.sizes[i].size == productSize ){
                var piece = element.sizes[i].piece;

                var newSize = Size(piece: piece + 1, size: productSize);
                 var sizes = element.sizes;
                 sizes.removeAt(i);
                 sizes.add(newSize);
                  data = {
              "price": productPrice,
              "productId": productKey,
              "productName": productName,
              "productUrl": productUrl,
              "sizes":  sizes
            };
            var url = "https://marketdelivery-172e2-default-rtdb.firebaseio.com/cart/testUserid/${productKey}.json";
              await Dio().patch(url,data:data);
              }else{
               var sizes = element.sizes;
               sizes.add(Size(piece: 1, size: productSize));
               data = {
              "price": productPrice,
              "productId": productKey,
              "productName": productName,
              "productUrl": productUrl,
              "sizes":  sizes
            };
             var url = "https://marketdelivery-172e2-default-rtdb.firebaseio.com/cart/testUserid/${productKey}.json";
              await Dio().patch(url,data:data);
              }
            }
          }else{
            data = {
              "price": productPrice,
              "productId": productKey,
              "productName": productName,
              "productUrl": productUrl,
              "sizes": [
                {
                "piece": 1,
                "size": productSize
                }
                ]
            };
             var url = "https://marketdelivery-172e2-default-rtdb.firebaseio.com/cart/testUserid.json";
              await Dio().post(url,data:data);
          }
          
        });
        fetchCartProducs();
  }
}