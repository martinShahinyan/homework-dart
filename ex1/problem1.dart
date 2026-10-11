void main() {
  List<String> shoppingList = ['Hats', 'Kat', 'Dzver'];
  shoppingList.add('Panir');
  shoppingList.insert(1, 'Karag');
  shoppingList.removeAt(2);
  shoppingList[0] = 'Sev hats';
  String firstItem = shoppingList.first;
  String lastItem = shoppingList.last;
  bool isEmpty = shoppingList.isEmpty;
  print('Arajin apranqy: $firstItem');
  print('Verjin apranqy: $lastItem');
  print('Cucaky datark e? $isEmpty');
  print('Verjnakan gnumneri cucaky: $shoppingList');
}
