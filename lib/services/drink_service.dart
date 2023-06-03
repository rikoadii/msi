import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:project_msi/models/resturant_drinks.dart';


class DrinkService {
  static const baseUrl = "http://localhost:3000/restaurant/minuman";

  Future<List<RestaurantDrink>> fetchDrink() async {
    try {
      final response = await http.get(Uri.parse(baseUrl));
      final body = response.body;
      final result = jsonDecode(body);
      List<RestaurantDrink> drinks = List<RestaurantDrink>.from(
        result['data'].map(
          (drink) => RestaurantDrink.fromJson(drink),
        ),
      );
      return drinks;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
