class ProductResponse {
  int? id;
  String? name;
  String? sortDescription;
  double? price;
  double? rating;
  int? discount;
  String? images;

  ProductResponse({
    this.id,
    this.name,
    this.sortDescription,
    this.price,
    this.rating,
    this.discount,
    this.images,
  });

  factory ProductResponse.fromJson(Map<String, dynamic> json) {
    return ProductResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
      sortDescription: json['sort_description'] as String?,
      price: json['price'] as double?,
      rating: json['rating'] as double?,
      discount: json['discount'] as int?,
      images: json['images'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'sort_description': sortDescription,
        'price': price,
        'rating': rating,
        'discount': discount,
        'images': images,
      };
}
