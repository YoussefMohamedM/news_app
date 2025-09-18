class CategoryModel {
  final String image;
  final String name;
  final Direction direction;

  const CategoryModel({
    required this.image,
    required this.name,
    required this.direction,
  });
}

enum Direction { r, l }
