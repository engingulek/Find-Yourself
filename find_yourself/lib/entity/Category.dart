// ignore_for_file: file_names

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
}
