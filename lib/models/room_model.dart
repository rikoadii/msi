class Room_Model {
  final int id_room;
  final String class_room;
  final String room_type;
  final String image;
  final String price;
  final String room_description;

  Room_Model({
    required this.id_room,
    required this.class_room,
    required this.room_type,
    required this.image,
    required this.price,
    required this.room_description,
  });

  factory Room_Model.fromJson(Map<String, dynamic> json) {
    return Room_Model(
      id_room: json['id_room'],
      class_room: json['class_room'],
      room_type: json['room_type'],
      image: json['image'],
      price: json['price'],
      room_description: json['room_description'],
    );
  }
}

