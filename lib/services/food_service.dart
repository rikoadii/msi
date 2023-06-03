import 'dart:convert';

// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

import 'package:project_msi/models/restaurant_food.dart';

// ignore: camel_case_types
class FoodService {
  static const baseUrl = "http://localhost:3000/restaurant/makanan";
  // ignore: non_constant_identifier_names
  Future<List<RestaurantFood>> fetchRoom_Model() async {
    try {
      final response = await http.get(Uri.parse(baseUrl));
      final body = response.body;
      final result = jsonDecode(body);
      List<RestaurantFood> foods = List<RestaurantFood>.from(
        result['data'].map(
          (food) => RestaurantFood.fromJson(food),
        ),
      );
      return foods;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
