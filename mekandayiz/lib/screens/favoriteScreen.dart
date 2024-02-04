import 'package:flutter/material.dart';
import 'package:mekandayiz/widget/boxItem.dart';
import 'package:mekandayiz/widget/locationBar.dart';

class favoriteScreen extends StatelessWidget {
  const favoriteScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Beğenilen Mekanlarım"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      MekanlarTitle(context, "Mekanlar", "/welcome"),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            MekanlarKutu(context, "Dominos", "4",
                                "assets/images/Domino's_pizza_logo.svg.png",
                                () {
                              Navigator.pushNamed(context, "/dominos");
                            }),
                            YorumKutusu(
                                context,
                                "Dominos/Pendik",
                                "bizzattaha",
                                "22 Ocak 2024",
                                "İlk kez deneyimledim. Baya pizza çeşidi vardı hepsi birbirinden güzeldi. En sevdiğim ğizza klasik olandı.",
                                () => null),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            MekanlarKutu(context, "Starbucks", "",
                                "assets/images/starbucks-logo-png-transparent-0.png",
                                () {
                              Navigator.pushNamed(context, "/starbucks");
                            }),
                            YorumKutusu(
                                context,
                                "Starbucks/Pendik",
                                "bizzattaha",
                                "22 Ocak 2024",
                                "İlk kez deneyimledim. Kahveleri başarılı Kahve çeşitleri bayağı var. Kendilerine has soğuk içecekler de mevcut.",
                                () => null),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            MekanlarKutu(context, "Colombia", "4.7",
                                "assets/images/colombia.png", () {
                              Navigator.pushNamed(context, "/colombia");
                            }),
                            YorumKutusu(
                                context,
                                "Colombia/Pendik",
                                "bizzattaha",
                                "22 Ocak 2024",
                                "İlk kez deneyimledim. Kahveleri başarılı Kahve çeşitleri bayağı var. Kendilerine has soğuk içecekler de mevcut.",
                                () => null),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            MekanlarKutu(context, "Pizza Go", "4.2",
                                "assets/images/pizzago_icon-640w.png", () {
                              Navigator.pushNamed(context, "/pizzago");
                            }),
                            YorumKutusu(
                                context,
                                "Pizza Go/Pendik",
                                "bizzattaha",
                                "22 Ocak 2024",
                                "İlk kez deneyimledim. Baya pizza çeşidi vardı hepsi birbirinden güzeldi. En sevdiğim ğizza klasik olandı.",
                                () => null),
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
                                color: Color.fromARGB(255, 188, 187, 187),
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
                                color: Color.fromARGB(193, 33, 149, 243),
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
        ));
  }
}
