import 'package:find_yourself/entity/CartProduct.dart';

mixin MixinCartListView {
    ( CartProduct , String) getCartProduct(Map<String,CartProduct> cartProducts, int index) {
    var keys = cartProducts.keys.toList();
    var key = keys[index];
    var cartProduct =  cartProducts[key];
    if (cartProduct == null) {
      var cartProduct = CartProduct(
        piece: 0, 
        price: 0, 
        productName: "", 
        productUrl: "", 
        size: "");
      return (cartProduct,"");
    }else{
      return  (cartProduct,key);
    }
  }
}