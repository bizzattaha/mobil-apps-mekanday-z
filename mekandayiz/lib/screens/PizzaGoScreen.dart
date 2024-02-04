import 'package:flutter/material.dart';
import 'package:mekandayiz/widget/boxItem.dart';
import 'package:mekandayiz/widget/locationBar.dart';

class PizzaGoScreen extends StatelessWidget {
  const PizzaGoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: const Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Pizza Go",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Pendik",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Container(),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        MekanlarTitle2(context, "Mekandan Öne Çıkanlar",
                            "Daha fazla ayrıntı için simgelere basın."),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          StoryWidget2("Menu", "assets/images/mavi.png"),
                          const SizedBox(
                            width: 25,
                          ),
                          StoryWidget2("Etkinlik", "assets/images/mavi.png"),
                          const SizedBox(
                            width: 25,
                          ),
                          StoryWidget2("Galeri", "assets/images/mavi.png"),
                          const SizedBox(
                            width: 25,
                          ),
                          StoryWidget2(
                              "Hizmetlerimiz", "assets/images/mavi.png"),
                          const SizedBox(
                            width: 25,
                          ),
                          StoryWidget2(
                              "Çalışanlarımız", "assets/images/mavi.png"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        MekanlarTitle3(context, "Yorumlar",
                            "Son İncelemelere Göre Sıralandı", "4.2", "123"),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          YorumKutusu(
                              context,
                              "Kahvesi Harika!!",
                              "Bilal Karabulut",
                              "21/21/2023",
                              "İlk kez deneyimledim. Kahveleri başarılı Kahve çeşitleri bayağı var. Kendilerine has soğuk içecekler de mevcut."
                                  " Pendikte yede böyle bir yer lazımdı. Personel güler yüzlü. Herkese teşekkür ederim.",
                              () {}),
                          YorumKutusu(
                              context,
                              "Kahvesi Harika!!",
                              "Bilal Karabulut",
                              "21/21/2023",
                              "İlk kez deneyimledim. Kahveleri başarılı Kahve çeşitleri bayağı var. Kendilerine has soğuk içecekler de mevcut."
                                  " Pendikte yede böyle bir yer lazımdı. Personel güler yüzlü. Herkese teşekkür ederim.",
                              () {}),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        MekanlarTitle2(context, "Galeri",
                            "Mekandan Çekilmiş Fotoğraflar"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          mekanFoto("assets/images/starbuck_foto4.jpg"),
                          mekanFoto("assets/images/starbuck_foto3.jpg"),
                          mekanFoto("assets/images/starbuck_foto2.jpg"),
                          mekanFoto("assets/images/starbuck_foto.jpg"),
                        ],
                      ),
                      

                    ),
                  )
                ],
              ),
            )),
            Container(
              height: 60,
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
        ));
  }
}