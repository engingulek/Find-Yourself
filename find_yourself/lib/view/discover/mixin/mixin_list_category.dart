import 'package:find_yourself/entity/Category.dart';

mixin MixinListCategory  {


  Category getCategory(Map<String,Category> categories, int index) {
    var keys = categories.keys.toList();
    var key = keys[index];
    var category =  categories[key];
    if (category == null) {
      var category = Category(imageUrl: "", name: "");
      return category;
    }else{
      return category;
    }

  }
}