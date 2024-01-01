class IcecreamData {
  List<Icecream> icecreams;

  IcecreamData({required this.icecreams});

  factory IcecreamData.fromJson(Map<String, dynamic> json) {
    List<Icecream> icecreamsList = List<Icecream>.from(
      json['icecreams'].map((icecream) => Icecream.fromJson(icecream)),
    );

    return IcecreamData(icecreams: icecreamsList);
  }
}

class Icecream {
  String flavour;
  String description;
  List<String> topping;
  double price;
  String image;
  List<Ingredient> ingredients;

  Icecream({
    required this.flavour,
    required this.description,
    required this.topping,
    required this.price,
    required this.image,
    required this.ingredients,
  });

  factory Icecream.fromJson(Map<String, dynamic> json) {
    List<Ingredient> ingredientsList = List<Ingredient>.from(
      json['ingredients'].map((ingredient) => Ingredient.fromJson(ingredient)),
    );

    return Icecream(
      flavour: json['flavour'],
      description: json['description'],
      topping: List<String>.from(json['topping']),
      price: json['price'].toDouble(),
      image: json['image'],
      ingredients: ingredientsList,
    );
  }
}

class Ingredient {
  String name;
  String quantity;

  Ingredient({required this.name, required this.quantity});

  factory Ingredient.fromJson(Map<String, dynamic> json) {
    return Ingredient(
      name: json['name'],
      quantity: json['quantity'],
    );
  }
}
