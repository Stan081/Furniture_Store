class Item {
  final int id;
  final String name;
  final String imgSrc;
  final double price;

  Item(
      {required this.id,
      required this.name,
      required this.price,
      required this.imgSrc});
}

class ItemModel {
  static final items = [
    Item(
        id: 1,
        name: "Royal Palm Sofa",
        imgSrc: "assets/images/image 261-2.png",
        price: 50.18),
    Item(
        id: 2,
        name: "Leatherette Sofa",
        imgSrc: "assets/images/image 268.png",
        price: 30.99),
    Item(
        id: 3,
        name: "Modern Sofa",
        imgSrc: "assets/images/image 269.png",
        price: 45.99),
    Item(
        id: 4,
        name: "Leatherette Sofa",
        imgSrc: "assets/images/image 270.png",
        price: 20.99),
  ];
}
