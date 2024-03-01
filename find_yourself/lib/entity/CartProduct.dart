class CartProduct {
    int piece;
    int price;
    String productName;
    String productUrl;
    String size;

    CartProduct({
        required this.piece,
        required this.price,
        required this.productName,
        required this.productUrl,
        required this.size,
    });

    factory CartProduct.fromJson(Map<String, dynamic> json) => CartProduct(
        piece: json["piece"],
        price: json["price"],
        productName: json["productName"],
        productUrl: json["productUrl"],
        size: json["size"],
    );
}