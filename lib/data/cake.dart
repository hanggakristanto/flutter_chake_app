class Cake {
  final int id;
  final String name;
  final String price;
  final String imageUrl;
  final bool isFaforite;
  final String subMenu;

  Cake({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.isFaforite,
    required this.subMenu,
  });
}

final List<Cake> listCakes = [
  Cake(
    id: 1,
    name: 'Banana Cake',
    price: '12,000',
    imageUrl: 'assets/box1.jpeg',
    isFaforite: true,
    subMenu: 'cake_box',
  ),
  Cake(
    id: 2,
    name: 'Banana Keju',
    price: '12,000',
    imageUrl: 'assets/box2.jpeg',
    isFaforite: true,
    subMenu: 'cake_box',
  ),
  Cake(
    id: 3,
    name: 'Banana Keju',
    price: '12,000',
    imageUrl: 'assets/box3.jpeg',
    isFaforite: true,
    subMenu: 'cake_box',
  ),
  Cake(
    id: 4,
    name: 'Banana Cake',
    price: '12,000',
    imageUrl: 'assets/box4.jpeg',
    isFaforite: true,
    subMenu: 'cake_box',
  ),
  Cake(
    id: 5,
    name: 'Banana Keju',
    price: '12,000',
    imageUrl: 'assets/box5.jpeg',
    isFaforite: true,
    subMenu: 'cake_box',
  ),
  Cake(
    id: 6,
    name: 'Banana Keju',
    price: '12,000',
    imageUrl: 'assets/box6.jpeg',
    isFaforite: true,
    subMenu: 'cake_box',
  ),
];
