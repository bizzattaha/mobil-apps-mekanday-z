import 'package:flutter/material.dart';
import 'package:mekandayiz/widget/boxItem.dart';
import 'package:mekandayiz/widget/locationBar.dart';
import 'package:mekandayiz/widget/menuItem.dart';
import 'package:mekandayiz/widget/profileItem.dart';
import 'package:mekandayiz/widget/responsive.dart';

// ignore: must_be_immutable
class welcomeScreen extends StatelessWidget {
  Screen device1 = Screen.mobile;
  welcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    device1 = detectScreen(MediaQuery.of(context).size);

    drawScreen1() {
      switch (device1) {
        case (Screen.mobile):
          return newMethod(context);
        case (Screen.tablet):
          return newMethod(context);
        case (Screen.destop):
          return newMethod(context);
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            locationBar(
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 33,
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/favorite");
                }),
            const Text(
              "Mekandayız - İSTANBUL ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            locationBar(
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 33,
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/favorite");
                }),
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
      drawer: Drawer(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            profileItem(
              avatar: "assets/images/logo4.jpg",
              name: "Bilal Karabulut",
              onTap: () {
                Navigator.pushNamed(context, "/profil");
              },
            ),
            Expanded(
              child: Column(
                children: [
                  const Divider(),
                  MenuItem(
                      title: "Ana Sayfa",
                      icon: const Icon(
                        Icons.home,
                        size: 20,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, "/welcome");
                      }),
                  MenuItem(
                      title: "Hakkımızda",
                      icon: const Icon(
                        Icons.info_outline,
                        size: 20,
                      ),
                      onTap: () {}),
                  MenuItem(
                      title: "Market",
                      icon: const Icon(
                        Icons.shop_two,
                        size: 20,
                      ),
                      onTap: () {}),
                  MenuItem(
                      title: "İletişim",
                      icon: const Icon(
                        Icons.message,
                        size: 20,
                      ),
                      onTap: () {}),
                  MenuItem(
                      title: "Ayarlar",
                      icon: const Icon(
                        Icons.settings,
                        size: 20,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, "/settings");
                      }),
                  const Divider(),
                  MenuItem(
                    icon: const Icon(Icons.logout_outlined),
                    title: "Çıkış Yap",
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, "/home", (route) => false);
                    },
                  ),
                ],
              ),
            ),
            const Text(
              "Version 1.0.7",
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      body: newMethod(context),
    );
  }

  Column newMethod(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                MekanlarTitle(context, "KATEGORİLER", "/welcome"),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0.0, shadowColor: Colors.transparent),
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              '/kesfet',
                            );
                          },
                          child: Katagori(
                              "/Users/bizzattaha/Downloads/mekandayiz/assets/images/mekan4.jpg",
                              "Restoranlar")),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0.0, shadowColor: Colors.transparent),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/kesfet',
                          );
                        },
                        child: Katagori(
                            "/Users/bizzattaha/Downloads/mekandayiz/assets/images/tatlici.webp",
                            "Tatlıcılar"),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0.0, shadowColor: Colors.transparent),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/kesfet',
                          );
                        },
                        child: Katagori(
                            "/Users/bizzattaha/Downloads/mekandayiz/assets/images/mekan3.jpg",
                            "Bi Kahve ?"),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0.0, shadowColor: Colors.transparent),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/kesfet',
                          );
                        },
                        child: Katagori(
                            "/Users/bizzattaha/Downloads/mekandayiz/assets/images/konser.png",
                            "Etkinlikler"),
                      ),
                    ],
                  ),
                ),
                MekanlarTitle(context, "Popüler Mekanlar", "/kesfet"),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MekanlarKutu(context, "Starbucks", "4.2",
                          "assets/images/starbucks-logo-png-transparent-0.png",
                          () {
                        Navigator.pushNamed(context, "/starbucks");
                      }),
                      MekanlarKutu(context, "Colombia", "4.7",
                          "assets/images/colombia.png", () {
                        Navigator.pushNamed(context, "/colombia");
                      }),
                      MekanlarKutu(context, "Caffe Nero", "4.7",
                          "assets/images/30202-1-coffee-logo-file.png", () {
                        Navigator.pushNamed(context, "/caffenero");
                      }),
                      MekanlarKutu(context, "Dominos", "4",
                          "assets/images/Domino's_pizza_logo.svg.png", () {
                        Navigator.pushNamed(context, "/dominos");
                      }),
                      MekanlarKutu(context, "Pizza Go", "4.2",
                          "assets/images/pizzago_icon-640w.png", () {
                        Navigator.pushNamed(context, "/pizzago");
                      }),
                      MekanlarKutu(context, "Komagene", "4.2",
                          "assets/images/golhisar.png", () {
                        Navigator.pushNamed(context, "/komagene");
                      }),
                      MekanlarKutu(context, "Tavuk Dünyası", "4",
                          "assets/images/tavukdunyası.jpeg", () {
                        Navigator.pushNamed(context, "/welcome");
                      }),
                      MekanlarKutu(context, "Cremma", "4.2",
                          "assets/images/cremma.png", () {
                        Navigator.pushNamed(context, "/welcome");
                      }),
                      MekanlarKutu(context, "Ekleristan", "4.2",
                          "assets/images/ekleristan.png", () {
                        Navigator.pushNamed(context, "/welcome");
                      }),
                      MekanlarKutu(context, "Bigchef", "4.2",
                          "assets/images/bigchef.jpeg", () {
                        Navigator.pushNamed(context, "/welcome");
                      }),
                      MekanlarKutu(context, "SushiCo", "4.5",
                          "assets/images/sushico.jpg", () {
                        Navigator.pushNamed(context, "/welcome");
                      }),
                    ],
                  ),
                ),
                MekanlarTitle(context, "Popüler Etkinlikler", "/etkinlikler"),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          MekanlarKutu(context, "Techno Music", "",
                              "assets/images/etkinlik8.webp",
                              () {
                            Navigator.pushNamed(context, "/welcome");
                          }),
                          MekanlarTitle4(context, "Yorumlar", "Beşiktaş", "5.0",
                              "123 Rewies"),
                        ],
                      ),
                      Column(
                        children: [
                          MekanlarKutu(context, "TeknoFest", "",
                              "assets/images/etkinlik6.png", () {
                            Navigator.pushNamed(context, "/komagene");
                          }),
                          MekanlarTitle4(context, "Yorumlar", "SAW Havalimanı", "5",
                              "123 Rewies"),
                        ],
                      ),
                      Column(
                        children: [
                          MekanlarKutu(context, "Rock Festival", "",
                              "assets/images/etkinlik3.png", () {
                            Navigator.pushNamed(context, "/dominos");
                          }),
                          MekanlarTitle4(context, "Yorumlar", "Kadıköy", "4.7",
                              "123 Rewies"),
                        ],
                      ),
                      Column(
                        children: [
                          MekanlarKutu(context, "Kitap Festivali", "",
                              "assets/images/etkinlik 1.png", () {
                            Navigator.pushNamed(context, "/dominos");
                          }),
                          MekanlarTitle4(context, "Yorumlar", "Kadıköy", "4.7",
                              "123 Rewies"),
                        ],
                      ),
                      Column(
                        children: [
                          MekanlarKutu(context, "Gençlik Festival", "",
                              "assets/images/etkinlik4.png", () {
                            Navigator.pushNamed(context, "/dominos");
                          }),
                          MekanlarTitle4(context, "Yorumlar", "Bursa", "4.7",
                              "123 Rewies"),
                        ],
                      ),
                    ],
                  ),
                ),
                MekanlarTitle(context, "Arkadaşlarım Nerde ?", "/arkadaslar"),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                  ],
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
    );
  }
}
