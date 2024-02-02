import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pizzeria/models/pizza.dart';

class PizzeriaService {
  static final String uri = "http://localhost/api/";

  Future<List<Pizza>> fetchPizzas() async {
    List<Pizza> list = [];

    try {
      final response = await http
          .get(Uri.parse('${uri}/pizzas/index.php'));

       if (response.statusCode == 200){
         print(response.body);
         var json = jsonDecode(utf8.decode(response.bodyBytes));
         for (final value in json){
           list.add(Pizza.fromJson(value));
         }
       }else{
         throw Exception('Impossible de récupérer les pizzas');
       }
    } catch (e) {
      throw e;
    }
    return list;
  }
}