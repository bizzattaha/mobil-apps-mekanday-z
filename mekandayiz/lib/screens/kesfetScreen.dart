import 'package:flutter/material.dart';
import 'package:mekandayiz/widget/boxItem.dart';
import 'package:mekandayiz/widget/locationBar.dart';

class kesfetScreen extends StatelessWidget {
  const kesfetScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mekanlar"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  MekanlarTitle(context, "Restoranlar", "/restoranlar"),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        MekanlarKutu(context, "The Hunger", "4",
                            "assets/images/thehunger.png", () {
                          Navigator.pushNamed(context, "/dominos");
                        }),
                        MekanlarKutu(context, "Happy Moons", "4",
                            "assets/images/happy.png", () {
                          Navigator.pushNamed(context, "/dominos");
                        }),
                        MekanlarKutu(context, "Bafra Pide", "4",
                            "assets/images/bafrapide.png", () {
                          Navigator.pushNamed(context, "/dominos");
                        }),
                        MekanlarKutu(context, "Big Chef", "4",
                            "assets/images/bigchef.jpeg", () {
                          Navigator.pushNamed(context, "/dominos");
                        }),
                        MekanlarKutu(context, "Pizza Go", "4.2",
                          "assets/images/pizzago_icon-640w.png", () {
                        Navigator.pushNamed(context, "/pizzago");
                      }),
                      ],
                    ),
                  ),
                  MekanlarTitle(context, "Tatlıcılar", "/tatlıcılar"),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        MekanlarKutu(context, "Ekleristan", "4.2",
                            "assets/images/ekleristan.png", () {
                          Navigator.pushNamed(context, "/welcome");
                        }),
                        MekanlarKutu(context, "Gaziburma", "4",
                            "assets/images/gaziburma.png", () {
                          Navigator.pushNamed(context, "/dominos");
                        }),
                        MekanlarKutu(context, "Hamdizade", "4",
                            "/Users/bizzattaha/Downloads/mekandayiz/assets/images/hamdizade_logo.png",
                            () {
                          Navigator.pushNamed(context, "/dominos");
                        }),
                        MekanlarKutu(context, "Sovay Pastane", "4",
                            "/Users/bizzattaha/Downloads/mekandayiz/assets/images/sovaypastane.jpeg",
                            () {
                          Navigator.pushNamed(context, "/dominos");
                        }),
                      ],
                    ),
                  ),
                  MekanlarTitle(context, "Bi Kahve ?", "/kahveci"),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        MekanlarKutu(context, "StarBucks", "4",
                            "/Users/bizzattaha/Downloads/mekandayiz/assets/images/starbucks-logo-png-transparent-0.png",
                            () {
                          Navigator.pushNamed(context, "/dominos");
                        }),
                        MekanlarKutu(context, "Espressolab", "4",
                            "assets/images/eslab.png", () {
                          Navigator.pushNamed(context, "/dominos");
                        }),
                        MekanlarKutu(context, "Colombia", "4",
                            "assets/images/colombia.png", () {
                          Navigator.pushNamed(context, "/dominos");
                        }),
                        MekanlarKutu(context, "Caffe Nero", "4.7",
                          "assets/images/30202-1-coffee-logo-file.png", () {
                        Navigator.pushNamed(context, "/caffenero");
                      }),
                      ],
                    ),
                  ),
                  MekanlarTitle(context, "Etkinlikler", "/etkinlikler"),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        MekanlarKutu(context, "Techno Music", "",
                            "assets/images/etkinlik8.webp", () {
                          Navigator.pushNamed(context, "/welcome");
                        }),
                        MekanlarKutu(context, "TeknoFest", "",
                            "assets/images/etkinlik6.png", () {
                          Navigator.pushNamed(context, "/komagene");
                        }),
                        MekanlarKutu(context, "Rock Festival", "",
                            "assets/images/etkinlik3.png", () {
                          Navigator.pushNamed(context, "/dominos");
                        }),
                        MekanlarKutu(context, "Kitap Festivali", "",
                            "assets/images/etkinlik 1.png", () {
                          Navigator.pushNamed(context, "/dominos");
                        }),
                        MekanlarKutu(context, "Gençlik Festival", "",
                            "assets/images/etkinlik4.png", () {
                          Navigator.pushNamed(context, "/dominos");
                        }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 65,
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      locationBar(
                          icon: const Icon(
                            Icons.home,
                            color: Color.fromARGB(255, 188, 187, 187),
                            size: 33,
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, "/welcome");
                          })
                    ],
                  ),
                  Column(
                    children: [
                      locationBar(
                          icon: const Icon(
                            Icons.explore,
                            color: Color.fromARGB(193, 33, 149, 243),
                            size: 33,
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, "/kesfet");
                          })
                    ],
                  ),
                  Column(
                    children: [
                      locationBar(
                          icon: const Icon(
                            Icons.favorite,
                            color: Color.fromARGB(255, 188, 187, 187),
                            size: 33,
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, "/favorite");
                          })
                    ],
                  ),
                  Column(
                    children: [
                      locationBar(
                          icon: const Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 188, 187, 187),
                            size: 33,
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, "/profil");
                          })
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
