import 'package:flutter/material.dart';
import 'package:mekandayiz/widget/boxItem.dart';
import 'package:mekandayiz/widget/locationBar.dart';

class profilScreens extends StatelessWidget {
  const profilScreens({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "bizzattaha ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  locationBar(
                      icon: const Icon(
                        Icons.add_box_outlined,
                        color: Colors.white,
                        size: 33,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, "/favorite");
                      }),
                  const SizedBox(
                    width: 15,
                  ),
                  locationBar(
                      icon: const Icon(
                        Icons.comment,
                        color: Colors.white,
                        size: 33,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, "/mesaj");
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                profileItems("Bilal Karabulut",
                                    "assets/images/bilalkarabulut.jpg"),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Column(
                                  children: [
                                    Text(
                                      "12",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text("Mekan")
                                  ],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Column(
                                  children: [
                                    Text(
                                      "10",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text("Etkinlik")
                                  ],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Column(
                                  children: [
                                    Text(
                                      "22",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text("Yorum")
                                  ],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Column(
                                  children: [
                                    Text(
                                      "41",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text("Yorum")
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Row(
                              children: [
                                Column(
                                  children: [
                                    Text("İstinye Üniversitesi"),
                                    Text("Software Developer"),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 190,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, "/settings");
                                    },
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      backgroundColor: Colors.blue,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 12),
                                    ),
                                    child: const Text('Profili Düzenle'),
                                  ),
                                ),
                                SizedBox(
                                  width: 190,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, "/profil");
                                    },
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      backgroundColor: Colors.blue,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 12),
                                    ),
                                    child: const Text('Profili Paylaş'),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            MekanlarTitle(context,
                                "Katılan Mekanlar,Etkinlikler", "/welcome"),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  MekanlarKutu(context, "Rock Festival", "",
                                      "assets/images/etkinlik3.png", () {
                                    Navigator.pushNamed(context, "/welcome");
                                  }),
                                  MekanlarKutu(context, "Starbucks", "4.2",
                                      "assets/images/starbucks-logo-png-transparent-0.png",
                                      () {
                                    Navigator.pushNamed(context, "/starbucks");
                                  }),
                                  MekanlarKutu(context, "Colombia", "4.7",
                                      "assets/images/colombia.png", () {
                                    Navigator.pushNamed(context, "/colombia");
                                  }),
                                  MekanlarKutu(context, "TeknoFest", "",
                                      "assets/images/etkinlik6.png", () {
                                    Navigator.pushNamed(context, "/welcome");
                                  }),
                                  MekanlarKutu(context, "Caffe Nero", "4.7",
                                      "assets/images/30202-1-coffee-logo-file.png",
                                      () {
                                    Navigator.pushNamed(context, "/caffenero");
                                  }),
                                  MekanlarKutu(context, "Tavuk Dünyası", "4",
                                      "assets/images/tavukdunyası.jpeg", () {
                                    Navigator.pushNamed(context, "/welcome");
                                  }),
                                  MekanlarKutu(context, "Rock Festival", "4",
                                      "assets/images/etkinlik3.png", () {
                                    Navigator.pushNamed(context, "/welcome");
                                  }),
                                  MekanlarKutu(context, "Caffe Nero", "4.7",
                                      "assets/images/30202-1-coffee-logo-file.png",
                                      () {
                                    Navigator.pushNamed(context, "/caffenero");
                                  }),
                                ],
                              ),
                            ),
                            MekanlarTitle(
                                context, "Mekan Görüşleri", "/welcome"),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  YorumKutusu(
                                      context,
                                      "Colombia/Pendik",
                                      "bizzattaha",
                                      "22 Ocak 2024",
                                      "İlk kez deneyimledim. Kahveleri başarılı Kahve çeşitleri bayağı var. Kendilerine has soğuk içecekler de mevcut.",
                                      () => null),
                                  YorumKutusu(
                                      context,
                                      "Caffe Nero/Pendik",
                                      "bizzattaha",
                                      "22 Ocak 2024",
                                      "İlk kez deneyimledim. Kahveleri başarılı Kahve çeşitleri bayağı var. Kendilerine has soğuk içecekler de mevcut.",
                                      () => null),
                                  YorumKutusu(
                                      context,
                                      "Colombia/Pendik",
                                      "bizzattaha",
                                      "22 Ocak 2024",
                                      "İlk kez deneyimledim. Kahveleri başarılı Kahve çeşitleri bayağı var. Kendilerine has soğuk içecekler de mevcut.",
                                      () => null),
                                  YorumKutusu(
                                      context,
                                      "Caffe Nero/Pendik",
                                      "bizzattaha",
                                      "22 Ocak 2024",
                                      "İlk kez deneyimledim. Kahveleri başarılı Kahve çeşitleri bayağı var. Kendilerine has soğuk içecekler de mevcut.",
                                      () => null),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
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
                            color: Color.fromARGB(193, 33, 149, 243),
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
    );
  }
}
