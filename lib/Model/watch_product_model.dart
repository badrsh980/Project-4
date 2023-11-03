class Watch {
  final String picture;
  final String name;
  final String title;
  final double price;
  final List<String> category;

  Watch({
    required this.picture,
    required this.name,
    required this.title,
    required this.price,
    required this.category,
  });

  factory Watch.fromJson(Map<String, dynamic> json) {
    return Watch(
      picture: json['picture'],
      name: json['name'],
      title: json['title'],
      price: json['price'].toDouble(),
      category: List<String>.from(json['category']),
    );
  }
}
