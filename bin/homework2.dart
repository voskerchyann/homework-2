import 'dart:ffi';

import 'package:homework2/bard/findpair.dart';
import 'package:homework2/bard/payment.dart';
import 'package:homework2/book.dart';
import 'package:homework2/shopping.dart';
import 'package:homework2/mijin/vehicle.dart';
import 'package:homework2/mijin/product.dart';

void main(List<String> arguments) async {
  Shopping shop = Shopping();
  shop.run();

  Book book = Book("Heqiatner", "Hovhannes Tumanyan", 60);
  print(book.getInfo());

  print(await sumValues(5, 10));

  ///mijin
  List<Vehicle> vehicles = [Car(8), Motorcycle(4)];
  print(totalConsumption(vehicles, 200));

  List<Product> products = [
    Product("Kat", "katnamterq", 600),
    Product("Hav", "mis", 1000),
    Product("Xndzor", "mirg", 520),
  ];

  print(totalByCategory(products));

  //bardd
  print(calculateTotal(CardPayment(), 1000));
  print(findPair([2, 7, 8, 6], 9));
  print(await runTasks());
}

//////////////////////////
Future<int> delayedValue(int value) async {
  await Future.delayed(Duration(milliseconds: 100));
  return value;
}

Future<int> sumValues(int a, int b) async {
  int x = await delayedValue(a);
  int y = await delayedValue(b);
  return x + y;
}

///mijin
Future<int> getNumber(int value) async {
  if (value <= 0) {
    throw Exception();
  }
  await Future.delayed(Duration(microseconds: 100));
  return value;
}

Future<int> safeGetNumber(int value) async {
  try {
    return await getNumber(value);
  } catch (e) {
    return 0;
  }
}

//bard
Future<String> runTask(String name, int milliseconds) async {
  await Future.delayed(Duration(microseconds: milliseconds));
  return "Task $name completed";
}

Future<List<String>> runTasks() async {
  return await Future.wait([
    runTask('A', 100),
    runTask('B', 50),
    runTask('C', 150),
  ]);
}

