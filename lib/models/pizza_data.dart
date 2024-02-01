import 'package:pizzeria/models/pizza.dart';

class PizzaData {
  static List<Pizza> buildList(){
    List<Pizza> list = [];
    list.add(Pizza(1, 'Barbecue', 'La garniture', 'pizza-bbq.jpg', 8));
    list.add(Pizza(2, 'Hawai', 'La garniture', 'pizza-hawai.jpg', 8));
    list.add(Pizza(3, 'Epinards', 'La garniture', 'pizza-spinach.jpg', 8));
    list.add(Pizza(4, 'Végétarienne', 'La garniture', 'pizza-vegetable.jpg', 8));
    return list;
  }
}