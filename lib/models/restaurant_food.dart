// ignore_for_file: public_member_api_docs, sort_constructors_first
class RestaurantFood {
  final int id_menu;
  final String menu_type;
  final String menu_name;
  final String image;
  final String price;
  final String description;

  RestaurantFood({
    required this.id_menu,
    required this.menu_type,
    required this.menu_name,
    required this.image,
    required this.price,
    required this.description,
  });

  factory RestaurantFood.fromJson(Map<String, dynamic> json) {
    return RestaurantFood(
      id_menu: json['id_menu'],
      menu_type: json['menu_type'],
      menu_name: json['menu_name'],
      image: json['image'],
      price: json['price'],
      description: json['description'],
    );
  }
}
