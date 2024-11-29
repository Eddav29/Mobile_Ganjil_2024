class Pizza {
  final int id;
  final String pizzaName;
  final double price;
  final String description;
  final String imageUrl;

  Pizza({
    required this.id,
    required this.pizzaName,
    required this.price,
    required this.description,
    required this.imageUrl,
  });

  factory Pizza.fromJson(Map<String, dynamic> json) {
    return Pizza(
      id: json['id'] as int,
      pizzaName: json['pizzaName'] as String,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'pizzaName': pizzaName,
      'price': price,
      'description': description,
      'imageUrl': imageUrl,
    };
  }
}
