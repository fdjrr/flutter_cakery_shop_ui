class Cake {
  final int id;
  final String name;
  final String price;
  final String image;
  final bool isFavorite;
  final String subMenu;

  Cake({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.isFavorite,
    required this.subMenu,
  });
}

final List<Cake> listCakes = [
  Cake(
    id: 1,
    name: 'Banana Cake',
    price: '79.000',
    image: 'assets/images/box1.jpeg',
    isFavorite: true,
    subMenu: 'cake_box',
  ),
  Cake(
    id: 2,
    name: 'Bolu Gula Aren',
    price: '94.000',
    image: 'assets/images/box2.jpeg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  Cake(
    id: 5,
    name: 'Brownies Keju',
    price: '104.000',
    image: 'assets/images/box5.jpeg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  Cake(
    id: 6,
    name: 'Brownies Almond',
    price: '94.000',
    image: 'assets/images/box6.jpeg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  Cake(
    id: 3,
    name: 'Coffee Cake Pudding',
    price: '99.000',
    image: 'assets/images/box3.jpeg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  Cake(
    id: 4,
    name: 'Puding Cake Tiramisu',
    price: '99.000',
    image: 'assets/images/box4.jpeg',
    isFavorite: true,
    subMenu: 'cake_box',
  ),
];
