class Car {
  final String name;
  final String image;
  final String image2;
  final String logo;
  final int price;

  Car(this.name, this.image, this.image2, this.logo, this.price);
}

List<Car> cars = [
  Car('Lamborghini Urus', 'assets/ci.png', 'assets/3.png', 'assets/b1.png',
      520),
  Car('BMW M7 Series', 'assets/c2.png', 'assets/1.png', 'assets/b2.png', 430),
  Car('Porshe', 'assets/c3.png', 'assets/4.png', 'assets/b3', 500)
];
