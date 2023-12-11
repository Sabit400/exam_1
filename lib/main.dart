void main() {
  List<Map<String, dynamic>> fruits = [
    {'name': 'Apple', 'color': 'Red', 'price': 2.5},
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'name': 'Orange', 'color': 'Orange', 'price': 3.0}
  ];

  displayFruitDetails(fruits);

  // Applying a 10% discount to the fruit prices
  applyPriceDiscount(fruits, 10);

  // Displaying updated fruit details after applying the discount
  displayFruitDetails(fruits);
}

void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  print('Fruit Details:');
  for (var fruit in fruits) {
    print('Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}');
  }
  print('');
}

void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    double originalPrice = fruit['price'];
    double discountAmount = (discountPercentage / 100) * originalPrice;
    double discountedPrice = originalPrice - discountAmount;
    fruit['price'] = discountedPrice;
  }
}
