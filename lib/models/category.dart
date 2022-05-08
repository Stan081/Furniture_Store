class Category {
  final int id;
  final String name;
  final String svgSrc;

  Category({required this.id, required this.name, required this.svgSrc});
}

class CatModel {
  static final categories = [
    Category(id: 1, name: "Popular", svgSrc: "assets/icons/star.svg"),
    Category(id: 2, name: "Chairs", svgSrc: "assets/icons/chair.svg"),
    Category(id: 3, name: "Tables", svgSrc: "assets/icons/table.svg"),
    Category(id: 4, name: "Sofas", svgSrc: "assets/icons/sofa.svg"),
    Category(id: 5, name: "Beds", svgSrc: "assets/icons/bed.svg"),
    Category(id: 6, name: "Lamps", svgSrc: "assets/icons/25-trolly.svg"),
  ];
}
