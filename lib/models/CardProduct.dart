class Products {
  String productImage;
  String ProductName;
  String productQty;
  String productPrice;
  DateTime ProductDate;
  Products(
      {required this.ProductDate,
      required this.productImage,
      required this.productPrice,
      required this.productQty,
      required this.ProductName});
}

final AllProducts = [
  Products(
      ProductDate: DateTime.now(),
      productImage: 'assets/images/bags.png',
      productPrice: '\$40',
      productQty: 'Quantity: 02',
      ProductName: 'Product Name'),
  Products(
      ProductDate: DateTime.now(),
      productImage: 'assets/images/bags.png',
      productPrice: '\$40',
      productQty: 'Quantity: 03',
      ProductName: 'Product Name'),
  Products(
      ProductDate: DateTime.now(),
      productImage: 'assets/images/bags.png',
      productPrice: '\$40',
      productQty: 'Quantity: 03',
      ProductName: 'Product Name'),
  Products(
      ProductDate: DateTime.now(),
      productImage: 'assets/images/bags.png',
      productPrice: '\$40',
      productQty: 'Quantity: 02',
      ProductName: 'Product Name'),
  Products(
      ProductDate: DateTime.now(),
      productImage: 'assets/images/bags.png',
      productPrice: '\$40',
      productQty: 'Quantity: 03',
      ProductName: 'Product Name'),
  Products(
      ProductDate: DateTime.now(),
      productImage: 'assets/images/bags.png',
      productPrice: '\$40',
      productQty: 'Quantity: 03',
      ProductName: 'Product Name'),
  Products(
      ProductDate: DateTime.now(),
      productImage: 'assets/images/bags.png',
      productPrice: '\$40',
      productQty: 'Quantity: 03',
      ProductName: 'Product Name'),
];
