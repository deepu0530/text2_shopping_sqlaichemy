// To parse this JSON data, do
//
//     final amazon = amazonFromJson(jsonString);

import 'dart:convert';

Amazon amazonFromJson(String str) => Amazon.fromJson(json.decode(str));

String amazonToJson(Amazon data) => json.encode(data.toJson());

class Amazon {
    Amazon({
          required this.filters,
         required this.products,
    });

    Filters filters;
    List<Product> products;

    factory Amazon.fromJson(Map<String, dynamic> json) => Amazon(
        filters: Filters.fromJson(json["filters"]),
        products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "filters": filters.toJson(),
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
    };
}

class Filters {
    Filters({
        required this.limit,
        required this.page,
        required this.totalCount,
    });

    int limit;
    int page;
    int totalCount;

    factory Filters.fromJson(Map<String, dynamic> json) => Filters(
        limit: json["limit"],
        page: json["page"],
        totalCount: json["total_count"],
    );

    Map<String, dynamic> toJson() => {
        "limit": limit,
        "page": page,
        "total_count": totalCount,
    };
}

class Product {
    Product({
        required this.amount,
        required this.description,
        required this.image,
        required this.name,
        required this.productId,
    });

    int amount;
    String description;
    String image;
    String name;
    int productId;

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        amount: json["amount"],
        description: json["description"],
        image: json["image"],
        name: json["name"],
        productId: json["product_id"],
    );

    Map<String, dynamic> toJson() => {
        "amount": amount,
        "description": description,
        "image": image,
        "name": name,
        "product_id": productId,
    };
}
