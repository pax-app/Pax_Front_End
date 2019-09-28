class Category {
  final int id;
  final String name;
  //final int generalCategory;

  Category({this.id, this.name});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
      //generalCategory: json['general_category_id'],
    );
  }
}
