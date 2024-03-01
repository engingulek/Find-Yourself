
class CartProduct {
    int price;
    String productId;
    String productName;
    String productUrl;
    List<Size> sizes;

    CartProduct({
        required this.price,
        required this.productId,
        required this.productName,
        required this.productUrl,
        required this.sizes,
    });

    factory CartProduct.fromJson(Map<String, dynamic> json) => CartProduct(
        price: json["price"],
        productId: json["productId"],
        productName: json["productName"],
        productUrl: json["productUrl"],
        sizes: List<Size>.from(json["sizes"].map((x) => Size.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "price": price,
        "productId": productId,
        "productName": productName,
        "productUrl": productUrl,
        "sizes": List<dynamic>.from(sizes.map((x) => x.toJson())),
    };
}

class Size {
    int piece;
    String size;

    Size({
        required this.piece,
        required this.size,
    });

    factory Size.fromJson(Map<String, dynamic> json) => Size(
        piece: json["piece"],
        size: json["size"],
    );

    Map<String, dynamic> toJson() => {
        "piece": piece,
        "size": size,
    };
}
