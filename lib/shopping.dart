class Shopping {
  List<String> shoppingList = ["Bread", "Milk", "Eggs"];

  void run() {
    shoppingList.add("Cheese");
    shoppingList.insert(1, "Apple");
    shoppingList.removeAt(2);
    shoppingList[0] = "Butter";

    print("First item: ${shoppingList.first}");
    print("Last item: ${shoppingList.last}");
    print("Is empty: ${shoppingList.isEmpty}");
    print("Shopping list: $shoppingList");
  }
}