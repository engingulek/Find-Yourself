import 'dart:convert';

Map<String, Category> categoryFromJson(String str) => 
Map.from(json.decode(str)).map((k, v) => 
MapEntry<String, Category>(k as String, Category.fromJson(v)));

String categoryToJson(Map<String, Category> data) => 
json.encode(Map.from(data).map((k, v) => 
MapEntry<String, dynamic>(k, v.toJson())));

class Category {
    String imageUrl;
    String name;

    Category({
        required this.imageUrl,
        required this.name,
    });

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        imageUrl: json["imageUrl"] as String,
        name: json["name"] as String,
    );

    Map<String, dynamic> toJson() => {
        "imageUrl": imageUrl,
        "name": name,
    };
}
