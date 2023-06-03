import 'package:flutter/material.dart';

import 'package:project_msi/models/restaurant_food.dart';
import 'package:project_msi/services/drink_service.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/resturant_drinks.dart';
import '../../services/food_service.dart';

class GridViewMenu extends StatefulWidget {
  @override
  _GridViewMenuState createState() => _GridViewMenuState();
}

class _GridViewMenuState extends State<GridViewMenu> {
  List<RestaurantFood> _foods = [];
  List<RestaurantDrink> _drinks = [];

  @override
  void initState() {
    super.initState();
    _fetchMenus();
    _fetchDrinks();
  }

  Future<void> _fetchMenus() async {
    try {
      List<RestaurantFood> foods = await FoodService().fetchRoom_Model();
      setState(() {
        _foods = foods;
      });
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<void> _fetchDrinks() async {
    try {
      List<RestaurantDrink> drinks = await DrinkService().fetchDrink();
      setState(() {
        _drinks = drinks;
      });
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 60, right: 60),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 600.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        40.0,
                      ),
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/image/populer2.png",
                      ),
                      fit: BoxFit.cover,
                      colorFilter:
                          ColorFilter.mode(Colors.black45, BlendMode.darken),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Restoran List",
                      style: GoogleFonts.raleway(
                        fontSize: 96,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Row(
                children: [
                  Text(
                    "Foods",
                    style: GoogleFonts.raleway(
                        fontSize: 40.0, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: 1,
                    width: 470,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),

              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                childAspectRatio: 16 / 12,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
                children:
                    _foods.map((menu) => _buildFoodItemCard(menu)).toList(),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Row(
                children: [
                  Text(
                    "Drinks",
                    style: GoogleFonts.raleway(
                        fontSize: 40.0, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: 1,
                    width: 470,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),

              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                childAspectRatio: 16 / 12,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
                children:
                    _drinks.map((menu) => _buildDrinkItemCard(menu)).toList(),
              ),
              // ...your existing code...
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFoodItemCard(RestaurantFood menu) {
    return InkWell(
      onTap: () {},
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 24,
                    offset: Offset(0, 11),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(
                  "assets/food/${menu.image}",
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    menu.menu_name,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    menu.price,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                menu.description,
                style: GoogleFonts.inter(
                  color: const Color(0xFF6A6A6A),
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrinkItemCard(RestaurantDrink menu) {
    return InkWell(
      onTap: () {},
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 24,
                    offset: Offset(0, 11),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(
                  "assets/drinks/${menu.image}",
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    menu.menu_name,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    menu.price,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                menu.description,
                style: GoogleFonts.inter(
                  color: const Color(0xFF6A6A6A),
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
