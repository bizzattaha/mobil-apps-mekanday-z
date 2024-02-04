import 'package:flutter/material.dart';
import 'package:mekandayiz/widget/boxItem.dart';
import 'package:mekandayiz/widget/locationBar.dart';

class ArkadaslarNerdeScreen extends StatelessWidget {
  const ArkadaslarNerdeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Arkadaşlarım Nerde ?",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Container(),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          StoryWidget2("",
                              "/Users/bizzattaha/Downloads/mekandayiz/assets/images/yunus.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          MekanlarTitle4(
                              context,
                              "Yunuscan Şahin",
                              "Starbucks - Pendik",
                              "Yakın Arkadaş",
                              "5 Dakika Önce"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          StoryWidget2("", "assets/images/Kasım.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          MekanlarTitle4(
                              context,
                              "İsmail Kasım Doğan",
                              "Starbucks - Pendik",
                              "Yakın Arkadaş",
                              "2 Dakika Önce"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          StoryWidget2("",
                              "/Users/bizzattaha/Downloads/mekandayiz/assets/images/Emre.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          MekanlarTitle4(
                              context,
                              "Emre Halil",
                              "Starbucks - Pendik",
                              "Yakın Arkadaş",
                              "2 Dakika Önce"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          StoryWidget2("",
                              "/Users/bizzattaha/Downloads/mekandayiz/assets/images/Sare.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          MekanlarTitle4(
                              context,
                              "Sare Küçükyeğen",
                              "YTÜ - Kahve Dünyası",
                              "Yakın Arkadaş",
                              "22 Dakika Önce"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          StoryWidget2("",
                              "assets/images/umut.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          MekanlarTitle4(
                              context,
                              "Umut Karabulut",
                              "Opel Bostancıoğlu",
                              "Aile",
                              "Şuan"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          StoryWidget2("",
                              "/Users/bizzattaha/Downloads/mekandayiz/assets/images/samet.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          MekanlarTitle4(
                              context,
                              "Samet Alaoğlu",
                              "Anadolu Ajansı",
                              "Aile",
                              "26 Dakika Önce"),
                        ],
                      ),
                    ),
                  ],
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
                                color: Color.fromARGB(193, 33, 149, 243),
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
                                Icons.settings,
                                color: Color.fromARGB(255, 188, 187, 187),
                                size: 33,
                              ),
                              onTap: () {
                                Navigator.pushNamed(context, "/profile");
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
