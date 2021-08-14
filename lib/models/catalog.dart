class CatalogModel {
  static List<Item> items = []; //= [
  //   Item(
  //     id: 1,
  //     name: "iPhone 12 Pro",
  //     desc: "Apple iPhone 12th Generation",
  //     price: 999,
  //     color: "#33505a",
  //     image:
  //         "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-12-pro-max-blue-hero?wid=940&hei=1112&fmt=png-alpha&.v=1604021658000",
  //   ),
  // ];

  //Get item by ID
  static Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  //Get Item by position
  static Item getByPosition(int pos) => items[pos];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  //below is already a constructor
  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    //used Map because hamara data Map ki form mein aa raha hai
    //decode karney ke liye
    //factory lets you choose ki konsa constructor play karun
    return Item(
      //dubara Item yahan issliye taki hum map ke hisab sey data display kar payein
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
  //agar baar baar likhney ki itni mehnat nahi karni toh seedha dart class ka extension bhi use kar saktein hai
}
