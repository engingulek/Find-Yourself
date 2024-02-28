class Product {
    String categoryId;
    String gender;
    String imageUrl;
    String name;
    int price;
    List<SizeList>? sizeList;

    Product({
        required this.categoryId,
        required this.gender,
        required this.imageUrl,
        required this.name,
        required this.price,
        this.sizeList,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        categoryId: json["categoryId"],
        gender: json["gender"],
        imageUrl: json["imageUrl"],
        name: json["name"],
        price: json["price"],
        sizeList: json["sizeList"] == null ? [] : List<SizeList>.from(json["sizeList"]!.map((x) => SizeList.fromJson(x))),
    );

   
}

class SizeList {
    int piece;
    String size;

    SizeList({
        required this.piece,
        required this.size,
    });

    factory SizeList.fromJson(Map<String, dynamic> json) => SizeList(
        piece: json["piece"],
        size: json["size"],
    );
}