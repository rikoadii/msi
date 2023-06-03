// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Room {
  final int id_room;
  final String class_room;
  final String room_type;
  final String image;
  final String price;

  Room(
      {required this.id_room,
      required this.class_room,
      required this.room_type,
      required this.image,
      required this.price});

  factory Room.fromJson(Map<String, dynamic> json) {
    return Room(
      id_room: json['id_room'],
      class_room: json['class_room'],
      room_type: json['room_type'],
      image: json['image'],
      price: json['price'],
    );
  }
}

class ApiRoom {
  static Future<List<Room>> fetchRooms(String url) async {
    final results = await http.get(Uri.parse(url));
    if (results.statusCode == 200) {
      final data = jsonDecode(results.body)['data'];
      return List<Room>.from(data.map((room) => Room.fromJson(room)));
    } else {
      throw Exception('Failed to fetch rooms');
    }
  }
}

class MenuRoom extends StatefulWidget {
  const MenuRoom({Key? key}) : super(key: key);

  @override
  State<MenuRoom> createState() => _MenuRoomState();
}

class _MenuRoomState extends State<MenuRoom> {
  late Future<List<Room>> standartRooms;
  late Future<List<Room>> mediumRooms;
  late Future<List<Room>> vipRooms;
  @override
  void initState() {
    super.initState();
    standartRooms = ApiRoom.fetchRooms('http://localhost:3000/room/standart');
    mediumRooms = ApiRoom.fetchRooms('http://localhost:3000/room/medium');
    vipRooms = ApiRoom.fetchRooms('http://localhost:3000/room/vip');
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(10.0),
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
                      "assets/image/populer1.png",
                    ),
                    fit: BoxFit.cover,
                    colorFilter:
                        ColorFilter.mode(Colors.black45, BlendMode.darken),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Room List",
                    style: GoogleFonts.raleway(
                      fontSize: 96,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            FutureBuilder(
              future: standartRooms,
              builder: (context, AsyncSnapshot<List<Room>> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  final List<Room> standartRoomList = snapshot.data!;
                  return Column(
                    children: [
                      Text(
                        'Standart Rooms',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: standartRoomList.length,
                        itemBuilder: (context, index) {
                          final Room room = standartRoomList[index];
                          return ListTile(
                            title: Text(room.room_type),
                            subtitle: Text('Price: ${room.price}'),
                          );
                        },
                      ),
                    ],
                  );
                }
              },
            ),
            SizedBox(height: 20.0),
            FutureBuilder(
              future: mediumRooms,
              builder: (context, AsyncSnapshot<List<Room>> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  final List<Room> mediumRoomList = snapshot.data!;
                  return Column(
                    children: [
                      Text(
                        'Medium Rooms',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: mediumRoomList.length,
                        itemBuilder: (context, index) {
                          final Room room = mediumRoomList[index];
                          return ListTile(
                            title: Text(room.room_type),
                            subtitle: Text('Price: ${room.price}'),
                          );
                        },
                      ),
                    ],
                  );
                }
              },
            ),
            SizedBox(height: 20.0),
            FutureBuilder(
              future: vipRooms,
              builder: (context, AsyncSnapshot<List<Room>> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  final List<Room> vipRoomList = snapshot.data!;
                  return Column(
                    children: [
                      Text(
                        'VIP Rooms',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: vipRoomList.length,
                        itemBuilder: (context, index) {
                          final Room room = vipRoomList[index];
                          return ListTile(
                            title: Text(room.room_type),
                            subtitle: Text('Price: ${room.price}'),
                          );
                        },
                      ),
                    ],
                  );
                }
              },
            ),
          ],
        ),
      ),
    ));
  }
}
