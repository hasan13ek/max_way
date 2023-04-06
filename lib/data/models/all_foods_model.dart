class AllFoods {
  static List<Pizza> pizzas = [
    Pizza(
      name: 'Gavaya',
      image: 'assets/images/burger/image1.png',
      description: '''
           Горячая закуска с митболами
           из говядины, томатами,
           моцареллой и соусом чипотле''',
      price: 45000,
    ),
    Pizza(
      name: 'Mexica',
      image: 'assets/images/burger/image2.png',
      description: '''
           Горячая закуска с митболами
           из говядины, томатами,
           моцареллой и соусом чипотле''',
      price: 64000,
    ),
    Pizza(
      name: 'Hot achchiko',
      image: 'assets/images/burger/image3.png',
      description: '''
           Горячая закуска с митболами
           из говядины, томатами,
           моцареллой и соусом чипотле''',
      price: 53000,
    ),
  ];
  static List<Burger> burgers = [
    Burger(name: 'Cheeseburger', image: 'assets/images/drink/image1.png', description: '''
            Горячая закуска с митболами
            из говядины, томатами,
            моцареллой и соусом чипотле
''', price: 23000,),
    Burger(name: 'Chiliburger', image: 'assets/images/drink/image2.png', description: '''
            Горячая закуска с митболами
            из говядины, томатами,
            моцареллой и соусом чипотле
''', price: 23000,),
    Burger(name: 'Hamburger', image: 'assets/images/drink/image3.png', description: '''
            Горячая закуска с митболами
            из говядины, томатами,
            моцареллой и соусом чипотле
''', price: 23000,),
  ];
  static List<Kombo> kombos = [
    Kombo(name: 'Kombo-1', image: 'assets/images/kombo/image1.png', description: '''
          Горячая закуска с митболами
          из говядины, томатами,
          моцареллой и соусом чипотле
''', price: 23000,),
    Kombo(name: 'Kombo-2', image: 'assets/images/kombo/image2.png', description: '''
          Горячая закуска с митболами
          из говядины, томатами,
          моцареллой и соусом чипотле
''', price: 23000,),
    Kombo(name: 'Kombo-3', image: 'assets/images/kombo/image3.png', description: '''
          Горячая закуска с митболами
          из говядины, томатами,
          моцареллой и соусом чипотле
''', price: 23000,),
  ];
  static List<Drink> drinks = [
    Drink(name: 'Sprite 1L', image: 'assets/images/pizza/image1.png', description: '''
          Горячая закуска с митболами
          из говядины, томатами,
          моцареллой и соусом чипотле
''', price: 6000,),
    Drink(name: 'Coca cola 1,5L', image: 'assets/images/pizza/image2.png', description: '''
          Горячая закуска с митболами
          из говядины, томатами,
          моцареллой и соусом чипотле
''', price: 9000,),
    Drink(name: 'Fanta 1L', image: 'assets/images/pizza/image3.png', description: '''
          Горячая закуска с митболами
          из говядины, томатами,
          моцареллой и соусом чипотле
''', price: 6000,),
  ];
}
class Pizza {
  String name;
  num price;
  String image;
  String description;
  Pizza(
      {required this.name,
      required this.image,
      required this.description,
      required this.price,});
}
class Burger {
  String name;
  num price;
  String image;
  String description;
  Burger(
      {required this.name,
      required this.image,
      required this.description,
      required this.price,});
}
class Kombo {
  String name;
  num price;
  String image;
  String description;
  Kombo(
      {required this.name,
      required this.image,
      required this.description,
      required this.price,});
}
class Drink {
  String name;
  num price;
  String image;
  String description;
  Drink(
      {required this.name,
      required this.image,
      required this.description,
      required this.price,});
}

