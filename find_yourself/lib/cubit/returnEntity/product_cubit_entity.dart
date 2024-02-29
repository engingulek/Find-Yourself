import 'package:find_yourself/entity/Product.dart';

class ProductEntityReturn {
   final Map<String,Product> products;
   final bool isLoading;

  ProductEntityReturn(this.products, this.isLoading);

}