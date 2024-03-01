import 'package:find_yourself/entity/CartProduct.dart';

class CartProductCubitEntity {
    final Map<String,CartProduct> cartProducts;
   final bool isLoading;

  CartProductCubitEntity(this.cartProducts, this.isLoading);
}