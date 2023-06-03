import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:project_msi/Home/widgets/main_menu.dart';
import 'package:project_msi/Home/widgets/tour_menu.dart';

import 'widgets/room_menu.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isBerandaHovered = false;
  bool _isPopulerHovered = false;
  bool _isHubungiKamiHovered = false;
  bool _isContainerHover = false;
  bool _isHomeHovered = false;
  bool _isPopularHovered = false;
  bool _isContactHovered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              // Jumbotron
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "WTC",
                          style: GoogleFonts.raleway(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              onHover: (_) {
                                setState(() {
                                  _isBerandaHovered =
                                      _isBerandaHovered ? false : true;
                                });
                              },
                              child: Text(
                                "Beranda",
                                style: GoogleFonts.raleway(
                                  fontSize: 13,
                                  fontWeight: _isBerandaHovered
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              onHover: (_) {
                                setState(() {
                                  _isPopulerHovered =
                                      _isPopulerHovered ? false : true;
                                });
                              },
                              child: Text(
                                "Populer",
                                style: GoogleFonts.raleway(
                                  fontSize: 13,
                                  fontWeight: _isPopulerHovered
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              onHover: (_) {
                                setState(() {
                                  _isHubungiKamiHovered =
                                      _isHubungiKamiHovered ? false : true;
                                });
                              },
                              child: Text(
                                "Hubungi Kami",
                                style: GoogleFonts.raleway(
                                  fontSize: 13,
                                  fontWeight: _isHubungiKamiHovered
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      height: 550,
                      width: double.infinity,
                      child: Stack(
                        children: <Widget>[
                          SizedBox(
                            width: double.infinity,
                            height: 500,
                            child: Stack(
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: Image.asset(
                                      "assets/image/jumbotron.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height,
                                    width: 350,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(40.0),
                                      ),
                                      gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Colors.black.withOpacity(0.5),
                                          Colors.transparent,
                                        ],
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 100, left: 50),
                                      child: Column(
                                        children: [
                                          Text(
                                            "Nikmati Liburan Impian Anda",
                                            style: GoogleFonts.raleway(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 30,
                                              color: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.",
                                            style: GoogleFonts.raleway(
                                                color: Colors.white,
                                                fontSize: 15),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            left: 0,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50),
                              child: Container(
                                height: 150,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(40.0),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x19000000),
                                      blurRadius: 24,
                                      offset: Offset(0, 11),
                                    ),
                                  ],
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xFFB7C3D1),
                                      Colors.white,
                                    ],
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 30, horizontal: 20),
                                      child: InkWell(
                                        onTap: () {},
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Location",
                                              style: GoogleFonts.raleway(
                                                  fontSize: 32.0,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            const SizedBox(
                                              height: 15.0,
                                            ),
                                            Text(
                                              "Sembung Narmada",
                                              style: GoogleFonts.raleway(
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 100.0,
                                      width: 1,
                                      decoration: const BoxDecoration(
                                        color: Colors.black38,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 30, horizontal: 20),
                                      child: InkWell(
                                        onTap: () {},
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Check in",
                                              style: GoogleFonts.raleway(
                                                  fontSize: 32.0,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            const SizedBox(
                                              height: 15.0,
                                            ),
                                            Text(
                                              "Daftar",
                                              style: GoogleFonts.raleway(
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 100.0,
                                      width: 1,
                                      decoration: const BoxDecoration(
                                        color: Colors.black38,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 30, horizontal: 20),
                                      child: InkWell(
                                        onTap: () {},
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Check out",
                                              style: GoogleFonts.raleway(
                                                  fontSize: 32.0,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            const SizedBox(
                                              height: 15.0,
                                            ),
                                            Text(
                                              "Periksa",
                                              style: GoogleFonts.raleway(
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 100.0,
                                      width: 1,
                                      decoration: const BoxDecoration(
                                        color: Colors.black38,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 30, horizontal: 20),
                                      child: InkWell(
                                        onTap: () {},
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Guestes",
                                              style: GoogleFonts.raleway(
                                                  fontSize: 32.0,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            const SizedBox(
                                              height: 15.0,
                                            ),
                                            Text(
                                              "Tamu",
                                              style: GoogleFonts.raleway(
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 70.0,
              ),
              Center(
                child: Text(
                  "Populer Room",
                  style: GoogleFonts.raleway(
                      fontSize: 40, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 73.0,
              ),

              // Info
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 150),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 330,
                        width: 350,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 24,
                              offset: Offset(0, 11),
                            ),
                          ],
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MenuRoom()),
                            );
                          },
                          child: Card(
                            child: Column(
                              children: [
                                Container(
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
                                      "assets/image/populer1.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 2),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Kamar Hotel",
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        "AED44",
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                  ),
                                  child: Text(
                                    "Standart- Single - Twinc - Superior - Deluxe - Family - Suit - Junior",
                                    style: GoogleFonts.inter(
                                      color: const Color(0xFF6A6A6A),
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 330,
                        width: 350,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 24,
                              offset: Offset(0, 11),
                            ),
                          ],
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GridViewMenu()),
                            );
                          },
                          child: Card(
                            child: Column(
                              children: [
                                Container(
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
                                      "assets/image/populer2.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 2),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Restoran",
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        "AED45",
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(
                                    "Smoking Area - Menu - Food - Drink",
                                    style: GoogleFonts.inter(
                                      color: const Color(0xFF6A6A6A),
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 330,
                        width: 350,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 24,
                              offset: Offset(0, 11),
                            ),
                          ],
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TourMenu()),
                            );
                          },
                          child: Card(
                            child: Column(
                              children: [
                                Container(
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
                                      "assets/image/populer3.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 2),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Wisata",
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        "AED46",
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                  ),
                                  child: Text(
                                    "Mandalika - Kuta Beach - An Beach - Sade Village - Merese Hill",
                                    style: GoogleFonts.inter(
                                      color: const Color(0xFF6A6A6A),
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 57.0,
              ),

              // Komentar Client
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color(0xFFF2F6FF),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 80, bottom: 150),
                  child: Column(
                    children: [
                      Text(
                        "FeedBeck",
                        style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w700, fontSize: 40),
                      ),
                      const SizedBox(
                        height: 82,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              width: 420,
                              height: 370,
                              color: Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const CircleAvatar(
                                    radius: 28.0,
                                    backgroundColor: Colors.green,
                                  ),
                                  const SizedBox(
                                    height: 29.0,
                                  ),
                                  Text(
                                    "Yosia Nevriska Danuarta",
                                    style: GoogleFonts.raleway(
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  const SizedBox(
                                    height: 18.0,
                                  ),
                                  Text(
                                    "Hotel top banget! Pelayanannya mantapo, kamarnya bersih, dan makanannya enak banget. Saya rekomen banget deh!",
                                    style: raleway(
                                      fontSize: 20.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Container(
                              width: 420,
                              height: 370,
                              color: Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const CircleAvatar(
                                    radius: 28.0,
                                    backgroundColor: Colors.green,
                                  ),
                                  const SizedBox(
                                    height: 29.0,
                                  ),
                                  Text(
                                    "SINOM",
                                    style: GoogleFonts.raleway(
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  const SizedBox(
                                    height: 18.0,
                                  ),
                                  Text(
                                    "Hotel yang luar biasa! Pelayanan sangat baik, kamar bersih, dan makanan enak. Sangat direkomendasikan",
                                    style: raleway(
                                      fontSize: 20.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Container(
                              width: 420,
                              height: 370,
                              color: Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const CircleAvatar(
                                    radius: 28.0,
                                    backgroundColor: Colors.green,
                                  ),
                                  const SizedBox(
                                    height: 29.0,
                                  ),
                                  Text(
                                    "Samsuladi Yusuf",
                                    style: GoogleFonts.raleway(
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  const SizedBox(
                                    height: 18.0,
                                  ),
                                  Text(
                                    "Pokoknya hotel ini juara! Pelayananya keren abis, kamarnya bersih banget , dan makanannya enak banget deh. Wajib dicoba deh!",
                                    style: raleway(
                                      fontSize: 20.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 77.0,
              ),
              Center(
                child: Text(
                  "Founder",
                  style: GoogleFonts.raleway(
                      fontSize: 40.0, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 70.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 100.0,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50.0,
                            ),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8NhPrmytXOhOeVHnUEdZtCmoDBDfBoPj3oQ&usqp=CAU",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 28.0,
                      ),
                      Text(
                        "BAYANI ADAM SASAKI",
                        style: GoogleFonts.raleway(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "UI/UX Designer",
                        style: GoogleFonts.raleway(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF858585)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 50.0,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50.0,
                            ),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO7zDloq96HDSZ8FH-QrGdU2h9wXLNhnxEVvTuMcnFrwDIwHXiw0tOaQHYJrwHzIJwOTo&usqp=CAU",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 28.0,
                      ),
                      Text(
                        "ANDIKA BINTANG NURSALIH",
                        style: GoogleFonts.raleway(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Flutter Developer",
                        style: GoogleFonts.raleway(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF858585)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 50.0,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50.0,
                            ),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                          child: Image.network(
                            "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBIWFRgVFRUYGBgVGBgYGBgYGBERGBgYGBgZGRgYGBgcIS4lHB4rHxgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHxISGjQhISE0MTQ0MTQ0MTQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDE0NDQxNP/AABEIAKgBLAMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAEAAECAwUGB//EADwQAAIBAgIGBwYFAwQDAAAAAAECAAMRBCEFEjFBUXEiYYGRobHBBhMyctHwQlJiguEjsvEUM5LCFSSi/8QAGQEAAwEBAQAAAAAAAAAAAAAAAAECAwQF/8QAJBEBAQEBAAICAgICAwAAAAAAAAECESExAxIEQSJRE/EUMmH/2gAMAwEAAhEDEQA/APKZCrsMkHEjUItlEtGkMpMiNQHRkwIHIhaSWPaIDKBlThODwuu1z8K7evqlKLNmgmqoHfzkji2VhrtbcPOO72F5PAUr2vv6R5QM4ikittu8XHjaRiAFF1n6gSfv73zQguDXItxPlLqj2BMdEWA+ERMroiyi+05ntzjVgT0Rv29Q3wPqGEa5c8besniG+EfqHhJIljbq8v8AMpxR6S9X1EJ5pfoYpFj4d49JdWcFE6rjyg8V4uH0PjD0eZHqZdTe6gynFi45Z+nrFhWytwMfPAXps5Zd2UrxaHV8Ry3+sVNsyDxuOW/xhL2KD9JI7DF6AbDvdesZGTJg2ENiR95ZQiOwivM3SuC1hrqOkNo4j6w9+P3ln9Y5bO0J4F8uTimppTB2OuoyPxDgePKZoEqVnZwwEe0laILGDAR1WTRL/XhJWG6MIMMpdTTISLjLthFBeiIUqSpJFJYFjERDgX3AjGh1wlWiyiacgdUIG6IA8PGEZRWgfA9zwPnGLC38GEWi1ZI4fDWLKLjaMvObmHphjY7ALmZGDTpjt8jNZH1b9YtCgHiDchRv9cofhjbW6lMzkzcHrv4QwHb15ffdCiFeNFFaARpCyjkJRiHuQOztMud9UcpChSOqXIJ2W2cczth68hfLETfx8pSjEn4GPG1tnfLWxQG1HH7TJoKoNh+/vKD4hOjfgR9+Mk+PpEEa1j1htstRQyNbf52FoegbWivIre2cYg3Hd37IwsRL3vvy+++DYcEMR95QtqqoBrXHXYkX5iC1KtMuCrA3FjCULXXo6w2qSey+ce8uoFSozG/eDvgwGqxTtXlCBWgs5++EKVLqTwt4wdh0x1gjulwY5jjtjoTxiABTxA8NvhAcUG1LqbMouOzb6zRrm6J2jutAaZvrA8T3EwgrNpaTOx1uN9svCB11W/QOR3HIjqjOliV4EjujBZUQiBJol/U8I4H8mWImt1KPGMqSLfIZL5x2WxhCpIuuccEUsuXb9YThV6I7fOVsuUKwa9Ecz5wop2WMUlzrnCaeALANln1SeiRmACLVEKWnlGNODSBigjBJeacWpA1HuxG92JeUkSkk+Hwq9MdvlDazWUwbDJnfgPOXYk9GBVTh/i7D6Qy8Cw56XYYXeOiJXivGvGvEOImmXZVHM9Q4zTamNXVFhlYekDwiVgOhS1r26RYDK2WUqxWNxCMUKKCLXsL2vmM7w+tqLrM9tCigUbRffHamp4//AFMY4vEnfbkF+kN0Vh6tVmV6jLqqDkQN9uEPpS/y59QQ2Evs8RLqNHVFuu8to4XUuNdnvvY37spZqyK0jJrpZiO0cjLMJTub7h5/fnCcZhi1iu29uzj98ZfTohQAN0O+AEq0CT1d/hK2wiW6+NrZw2vhy4sGZM9q2v47pj46piKLlNbXAANyF38pWc2+k61M+2jRoqAAANmdrQfSGGuusBmmfZvgSaZb8aA9YuPrD6ek6ZALK6g7CVJU9oh9dQTWb+wDOOgRxl8DxKqG6DBlJuCM92zmPpCgZVOJXgtNukesnzl5MBV9/bCChMfTs7ddj4QZj9/SFaUYBuYHrKKNEnM90cRSpUy23IQxViVZYqwIyrIVFz7IQqyNVcxHBFLLkfvfC8AnR7TKSmR+94heAHQbmfSLR2EFuZrVUtYcABB8DRu6jrv3ZzTrJnM7WknhzqV0sPi7gY/vKfHwMGVTaEYWlfMiaXLKatpFk/MPKRy3EHtEuqUV4Dugz4ZOHiYuNZ1IpK2WQbCjcSI9CjY31iQN2drwp9v9CqS2HnKKr/EOUu1oGzb+MIKlTaxHPzyhkhovR716gRNpzLblUbWMerdSQwsQSp6iDY+MV9iJXivGvFeI+Oh0a51FIO63dl6SNbBh3ZyTdrXtYbAB6SOhTenb8rEeR9Zoasn7WekazNe4DGFS1rG3MySUFGxQITqRakX2tEzmeop1YtWXakWpA1OrFqy7Ui1IBRqyqrhFY3N72te52DZthmpFqQlsK5lnKzcRo4Nwy6rQvAIEpKjKCRrZ7s2JHgZfqRakr71E+LM9RlaUwqe7YhQCOlkAM9/hMdGyHKdNjad0ccVIHM5CcrRbowzfDSQsQ9lPLzygVB8rcI+kq+qAo2nO0GwiMOkd8uJt8ratPWfWO4Ad0tCx1EmBGi0lEsVYyrLkWAJFjVV2S1Vj1V2dsDz7VamRl+CXokfq9BEEyPIy/CU8otVpxpaKpZluAt3/AOIViFz7JdgKeqgPE39PSSr08xy+sy75acckKOUJwiWvNjSuhfdKrBtYEZ5Wts6+uZ2HXbOnWeOfHL5iqosoKZwuoJQwk8bSB6glOpzhNQSu0mmGdrKesmDBpdqF+ofeyM9PMgbr2il4mu99hsGFoGoR0qjHP9KEqB36xmB7T0R7xnUdGpcjmNvfke2ddoVCMGgG33W7iQT5mCYnRvv0KbCBdTwYbOzdyMz75KOCo1Nx/wAy680/ZjAg4pqVRNiOGU9g+zL9N+z1SiS6XdOO1l+YDd1y7fJyp+zpuHHAqe8Eek2dSYHswTruvFL/APEgf9p0yUydgJka9iqNSLUmjS0ex+I28TDKWFRdgueJziLrIp4N22L2nIQunov8zd31M1LRQLoRNH0x+G/MwLSdBQV1VAya9st4t6zYkWQEgkZjZAdZ9LRylBrZNxHrA6+CZd1xxE3rRWgOua1I2pNuvgVbMZHw7pnVqDLtHbugYF0zXn6Ezjaiajun5XYdgJncVBmvzf8AVpy2nNHsHqVNiEJ2sbAjzMeaPTnSmuxY8hyEIAjhZICaMreogSxRGUSaiASUS1RIqJciwCSrJ1UyEdFl1VMhzgrPtUqZdhheGp5C0pQTQ0Ytyvfx2Sa3zGylOwA4CUYtel2QxTn/AARKcQMxy9TIVWppHAh0U3IKAMOB2EgjsnI1KYDvbYHInoOIo2p9WqPIThaydN/nb1nbuxy/jy85WdUXOUuIXVXODtMq6eBaolREvrCVESaFZEH/ABHmYQ7AbYNa5JPdDObWW9TLu/Y7SiunuSeklyv6kvfLlfutOkVACSALnbPJaVRlYMpKspuCMiDOy0R7W0yAuIOo2zXt0Dzt8J8It/HZ5jOa63v/ABtP3/8AqALPqFDbYwJFiesWtDSJVSrIwDKwYHYQQR3iIYhNbV1heZLU0dG0kc1EQK7AgkZAgkE5bL5CF2iEUCPaNFFAFFFINVUGxIvwgE4oooAooooAozKDtjxGAZekcOigECx1uz4WnG+1GMHQpA5k6zdQANr9vlOi9rtImmiKttdySL52AFr2/dPO6yuX12JbWNyTtvbfLzi3+Qup6W2jxWj2lMiAk1EYCWKIKSQQhFlaiXosBF1FLy3Ejojn6GSprHxI6PaIftpn2opzU0H8a8m8jMumZo6Ebpp+7yMLG0dWoylGJGY5eplynKUYnaOXqYcKumxI/o/tX0nAVE6T/O3mZ6JjF/o/tTzWcGy5t87ecvVT8GfDIrpmYI6zQxK5mB1IutrAdYShzYX4QnECDVFupHEGTUUEz3Nz/iNrSWIosjFGFipsfqOqVzec54cV7b5WCIiRBkhGlQHdD0WZb/lJW/O06X2TdmVyWOsHBuSSb239WU590BnR+yo/3OsofAzH5M8nW+d98OzwOM1+i2TDaOPKGic6y7wbEbD97poYPSP4XyPHj9ZguxpRRKYoJKU4mgHFjkdxG0S6KAUUaLBQGYkjgbDwlqpbee03kooAoooiYAjKq9ZUUu5AVRck5ACU4/SFOkpd2sBu2k9QHGcBpvTtTEG3woDknHrbifKVnF1S1rijTOkDXqs+wbEB3KNnbtPbACI0edcnJxjb0kXd3dfVzitEREh3GZazzycqYk0EiolqyFrUWFU1zg6wqkICL0EbFfAeY85JYsSOgezzEJ7aZDUxleG6Hbpp81oJTGUt0W9nX5x5iOxtHYqejB8Wcx8o9YQuwwas2zl6mVw67PHL/R7E8xOEdNvzN5zv8YP6Q5L5TinTI8zI1pX48/iwcQMzAqgmni0zmbVgrQSuYOYRXgxOUKzrax2jv9RQSon+4i2P6wuRHPLLnOVYEGxFiMiDkQZ2HsxiRZkJ36w5HI+Q75fprQSVbullfj+Fvm6+uRj5vpr669ObePPhw8kDLMVhalNtR1Knr2EcQd4lM65ZfMZJgzo/ZbY/NfWYGFwzu2qgufADiTuE63ROB90GW9ydUk7M89nVMvl1OcXjN71oxmUHb98oo852qVHFVE36y9/ePpNOhj0bfby75lSDIDnsPEZH+YHx0QMUwErOmw3Hd4bD4QpNKW+Id/R8dkE8a0V4ENIpbYfAwWvpI7F28BmfoIDjUqVVUXJtOf0x7SpTuq5twG3t/LK8VXIVnc5KCSAc8t15wlaoWYsdrG/8TT48/a+U6v1EY7H1Krazm/AbhyEHBkJITpk56Y3ylHkRHgR4xEeKAW0zeWqINSax5+cLUTDU5WkvVqCFoINTEKWI4tWPX+A/e+MseqeieUIqVQshgWs4+ceYk1MGw72Y9TAy23XfIdszsa9mt1eph48xAsSRccvUyldeg44f0l/b/bOMqLl3zstIH+kv7f7TOPrHozk1fK/hv8WJjhMeqc5s407Zz+LqhczumuPJ7vPKutBrySuSpd8htAHDiTEoRvhPM32fzNf8dri3+XiXxLT0HZWDqbap2zq9G6TD9FrB/BusfScwwFrbrWg2Fr3Fj8S+m+G/gzrPP3/bl/5Grq6/X9O7xeEp1F1XUMPEdYO6c1jfZZwb0mDLfY2TAeTeEMwGmiOjUzH59/7hv5zdpVFYAqQQdhGYnFb8nw3n+nVnWPknYy8BhEprqrt/ETkxPXCE2tzHkIZUQNtHI7xyMEQ5de/nvjzv7NJEorxiI8sFFeKKAK8eNFAIGmvDuyklAGwW8I8gzWFzugGD7UYvJaQO3pNy/CO+57BOchml9f3z6+24PIEAgd1oFedWJzLDd7TxSKyUskgZKQvHvBKUUjrRa0AdoZSe4B+7wEmGYZCBntOcjfF5HUpcplNPZLRMlrkkn+BuR8pCnJ1PhPI+UAEV4IjZt2SavKAek3ZNGnXot7qD1DygddDccvrCcM16aH9CnwEhiTmOXqZS+u10tUtSTs/tnG1anRm57Q49KdBWdgABv46uQA3nqnlukdM16nRRSibL7Gbmd3ZOX/HrWvCJ8+cZ81o6V0pTS4vrN+UZnt4TnDVaq41tgzsNgH1lBw1Th4iE4FCL3FjOrGJlx/N+RrU/8EYjNG+U+Uhg0sg68z2/xLCZBDYAcBbsmjk744tJmbUJVyRxv3w8mB41dh7PpCqz7Fo4IuN8P0TiilRc+ixsw3Z5A9htMLDVtU2Ow+HXDrydZms2VU7nXY76BuLMR2jt2+IMfR2J16avvIsfmGR8ZOsvSU9dj2/yB3zy5/HXK9KXs60amEBQDYVGR+sy3Qg2Izm5K69BXGfYd83ErGjXl2Iw7Jt2cZRAz3jyMUDPeQfMgdp5D+beMvo0Wc2Hadwkq+HC9Ib8v+P83MCcf7UU7VFb8y27VP0ImITOn9q06CNwYjvBP/WcvOn473LHc8pLHEjFLSnFI3j3jB4pZRoM2zIcT6cYamGUDZnx3x86y18mc0PQo2zO3yhCxMhGzPzjKZhqWXy0xvOvQtZYJSpk1MhoIpyxjkeUrQyV4GyEaV36R5RxIfi/b6zRT0LAPegnyL/aJDFNmPlEr0O18OnyW7spTiahvbgLdxMpc9MHSmlquIYM7ZAWVRkqDgBx69pgBaKKavJvm+TXj3iigkiZFoooBHX3GRrLdSIooKAQjDV/wnsPpFFJXfTpvZzFWY0z+LpLzG0d3kZ0DC4+8juMeKef+TJPk8Oz8e9x5aNCprKDx8DvHfLLxRSp6amIG+C1MCh2ZctndFFGA7aPbcQe8Sylo/8AMewfWKKAGogUWAsJTjad0Nt2Y7P4iigHIe0xHuduestus/4vOSEUU6Pi/wCrPfso8UU0QYmSpIWIHGKKEZb1eNgRXiimrkRvGcA8/GKKTVZJXtt7/rCEMUUw+SSOz4tWzyuUywGNFMmrGY5mQv0x8piimi3a6Bqf+unVrDuYyrEN0jzPmYopS56f/9k=",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 28.0,
                      ),
                      Text(
                        "RIKO ADI RANASMITA",
                        style: GoogleFonts.raleway(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Back - End Developer",
                        style: GoogleFonts.raleway(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF858585)),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 80.0,
              ),
              Container(
                height: 500,
                color: const Color(0xFFF2F6FF),
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 280,
                      color: Colors.white,
                      child: Stack(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 100, vertical: 38),
                        child: Expanded(
                          child: Container(
                            height: 440,
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 146, 145, 145),
                                  blurRadius: 24,
                                  offset: Offset(6, 11),
                                ),
                              ],
                              color: Color(0xFFF2F6FF),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "100+ Diskon",
                                  style: GoogleFonts.inter(
                                    fontSize: 36.0,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFF1F50D1),
                                  ),
                                ),
                                const SizedBox(
                                  height: 25.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 200),
                                  child: Text(
                                    "Bergabunglah dengan hadiah dan temukan diskon luar biasa untuk pemesanan Anda",
                                    style: GoogleFonts.raleway(
                                      fontSize: 48.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                const SizedBox(
                                  height: 26.0,
                                ),
                                InkWell(
                                  onTap: () {},
                                  onHover: (values) {
                                    setState(() {
                                      _isContainerHover =
                                          _isContainerHover ? false : true;
                                    });
                                  },
                                  child: Container(
                                    width: _isContainerHover ? 240 : 220,
                                    height: _isContainerHover ? 80 : 70,
                                    decoration: BoxDecoration(
                                      color: _isContainerHover
                                          ? Colors.blueGrey
                                          : Color(0xFF1F50D1),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          16.0,
                                        ),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x19000000),
                                          blurRadius: 24,
                                          offset: Offset(0, 11),
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Bergabung",
                                        style: GoogleFonts.raleway(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 32,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF2F6FF),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 100, right: 100, top: 70),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "WTC",
                            style: GoogleFonts.raleway(
                              fontSize: 48,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(
                            width: 270.0,
                          ),
                          SizedBox(
                            height: 300,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Perusahaan",
                                  style: GoogleFonts.raleway(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 11.0,
                                ),
                                Text(
                                  "Google",
                                  style: GoogleFonts.raleway(
                                    fontSize: 20,
                                    color: Color(0xFF858585),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "Microsoft",
                                  style: GoogleFonts.raleway(
                                    fontSize: 20,
                                    color: Color(0xFF858585),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "Universitas Bumigora",
                                  style: GoogleFonts.raleway(
                                    fontSize: 20,
                                    color: Color(0xFF858585),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 30.0,
                          ),
                          SizedBox(
                            height: 300,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Tautan",
                                  style: GoogleFonts.raleway(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 11.0,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  onHover: (value) {
                                    setState(() {
                                      _isHomeHovered =
                                          _isHomeHovered ? false : true;
                                    });
                                  },
                                  child: Text(
                                    "Home",
                                    style: GoogleFonts.raleway(
                                      fontSize: 20,
                                      color: _isHomeHovered
                                          ? Colors.black
                                          : Color(0xFF858585),
                                      fontWeight: _isHomeHovered
                                          ? FontWeight.bold
                                          : FontWeight.w600,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  onHover: (value) {
                                    setState(() {
                                      _isPopularHovered =
                                          _isPopularHovered ? false : true;
                                    });
                                  },
                                  child: Text(
                                    "Popular",
                                    style: GoogleFonts.raleway(
                                      fontSize: 20,
                                      color: _isPopularHovered
                                          ? Colors.black
                                          : Color(0xFF858585),
                                      fontWeight: _isPopularHovered
                                          ? FontWeight.bold
                                          : FontWeight.w600,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  onHover: (value) {
                                    setState(() {
                                      _isContactHovered =
                                          _isContactHovered ? false : true;
                                    });
                                  },
                                  child: Text(
                                    "Contact Us",
                                    style: GoogleFonts.raleway(
                                      fontSize: 20,
                                      color: _isContactHovered
                                          ? Colors.black
                                          : Color(0xFF858585),
                                      fontWeight: _isContactHovered
                                          ? FontWeight.bold
                                          : FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 30.0,
                          ),
                          SizedBox(
                            height: 300,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Kontak",
                                  style: GoogleFonts.raleway(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 11.0,
                                ),
                                Text(
                                  "wtc@gmail.com",
                                  style: GoogleFonts.raleway(
                                    fontSize: 20,
                                    color: Color(0xFF858585),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "085931492003",
                                  style: GoogleFonts.raleway(
                                    fontSize: 20,
                                    color: Color(0xFF858585),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "00544-222-22",
                                  style: GoogleFonts.raleway(
                                    fontSize: 20,
                                    color: Color(0xFF858585),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 300.0,
                            height: 50,
                            color: Color(0xFFF2F6FF),
                          ),
                          Container(
                            width: 400,
                            height: 1,
                            color: Colors.black,
                          ),
                          Text(
                            "All Reserved by WTC Copyright 2023",
                            style: GoogleFonts.raleway(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  raleway({required double fontSize}) {}
}
