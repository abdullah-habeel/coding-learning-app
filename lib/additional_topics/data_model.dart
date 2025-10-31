class Property {
  final String shop;
  final String location;
  final double price;
  final double sales;
  final double profit;
  Property({
    required this.shop,
    required this.location,
    required this.price,
    required this.profit,
    required this.sales,
  });
}

List<Property> marketInfo = [
  Property(
    shop: 'Cloth',
    location: 'Sadar Bazar',
    price: 20000,
    profit: 300000,
    sales: 130,
  ),
  Property(
    shop: 'Fast Food ',
    location: 'Susan Road',
    price: 15000,
    profit: 200000,
    sales: 100,
  ),
  Property(
    shop: 'Shoes',
    location: 'Susan Road',
    price: 18000,
    profit: 200000,
    sales: 200,
  ),
  Property(
    shop: 'Cloth',
    location: 'Susan Road',
    price: 25000,
    profit: 250000,
    sales: 150,
  ),
  Property(
    shop: 'Toe Shop',
    location: 'Susan Road',
    price: 14000,
    profit: 180000,
    sales: 300,
  ),
  Property(
    shop: 'Toe Shop',
    location: 'Karkhana Road',
    price: 18000,
    profit: 250000,
    sales: 350,
  ),
  Property(
    shop: 'Garments',
    location: 'Samundri Road',
    price: 19000,
    profit: 130000,
    sales: 270,
  ),
  Property(
    shop: 'Shoes',
    location: 'Ameen Road',
    price: 14000,
    profit: 150000,
    sales: 200,
  ),
  Property(
    shop: 'Fast Food',
    location: 'Karkhana Road',
    price: 17000,
    profit: 170000,
    sales: 180,
  ),
  Property(
    shop: 'Cloth',
    location: 'Samundri Road',
    price: 14000,
    profit: 140000,
    sales: 120,
  ),
];
