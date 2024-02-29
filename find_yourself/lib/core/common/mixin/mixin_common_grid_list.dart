import 'package:find_yourself/entity/Product.dart';

mixin MixinCommonGridList {

 ( Product , String) getProduct(Map<String,Product> products, int index) {
    var keys = products.keys.toList();
    var key = keys[index];
    var product =  products[key];
    if (product == null) {
      var product = Product(
        categoryId: "", 
        gender: "", 
        imageUrl: "", 
        name: "",
        salesCount: 0,
        price: 0);
      return (product,"");
    }else{
      return  (product,key);
    }
  }
}