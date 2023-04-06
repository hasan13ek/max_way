const String foodTable = "food_table";

class FoodFields {
  static final List<String> values = [
    /// Add all fields
    id, name, price, image, description,
    // totalPrice
  ];
  static const String id = "_id";
  static const String name = "name";
  static const String price = "price";
  static const String image = "image";
  static const String description = "description";
}

class FoodModel {
  String name;
  int? id;
  String image;
  num price;
  String description;
  FoodModel({
    required this.price,
    required this.name,
    required this.image,
    required this.description,
  });

  FoodModel copyWith({
    int? id,
    String? name,
    num? price,
    String? image,
    String? description,
  }) =>
      FoodModel(
        price: price ?? this.price,
        name: name ?? this.name,
        image: image ?? this.image,
        description: description ?? this.description,
      );

  factory FoodModel.fromJson(Map<String, dynamic> jsonData) {
    return FoodModel(
      price: jsonData[FoodFields.price],
      name: jsonData[FoodFields.name],
      image: jsonData[FoodFields.image],
      description: jsonData[FoodFields.description],
    );
  }

  Map<String, Object?> toJson() => {
        FoodFields.id: id,
        FoodFields.name: name,
        FoodFields.image: image,
        FoodFields.price: price,
        FoodFields.description: description,
      };
}
