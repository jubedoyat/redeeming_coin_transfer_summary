String formatPrice(int number) {
  String price = number.toString();
  RegExp regExp = RegExp(r'(\d)(?=(\d{3})+(?!\d))');
  return '\$$price'.replaceAllMapped(regExp, (match) => '${match[1]}.');
}

String formatPriceWithFloatingPoint(int number) {
  String price = number.toStringAsFixed(2);
  RegExp regExp = RegExp(r'(\d)(?=(\d{3})+(?!\d))');
  price = price.replaceAllMapped(regExp, (match) => '${match[1]}.');
  price = price.replaceRange(price.length-3,price.length-2, ',');
  return '\$$price';
}