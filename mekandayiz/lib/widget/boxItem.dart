import 'package:flutter/material.dart';
import 'package:mekandayiz/widget/menuItem.dart';

Container MekanlarKutu(context, String MekanAdi, String MekanPuani,
    String MekanFoto, Function()? MekanOnTap) {
  return Container(
    child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 180,
          height: 180,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 215, 215, 215),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      MekanAdi,
                      style:
                          const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 255, 128, 0),
                        ),
                        Text(
                          MekanPuani,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 255, 128, 0),
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        MekanFoto,
                        width: 87,
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    MenuItem(
                        title: "Daha Fazla",
                        icon: const Icon(Icons.expand_circle_down),
                        onTap: MekanOnTap),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Container MekanlarKutu2(context, String MekanAdi, String MekanPuani,
    String MekanFoto, Function()? MekanOnTap) {
  return Container(
    child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 400,
          height: 180,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 215, 215, 215),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      MekanAdi,
                      style:
                          const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 255, 128, 0),
                        ),
                        Text(
                          MekanPuani,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 255, 128, 0),
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        MekanFoto,
                        width: 87,
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    MenuItem(
                        title: "Daha Fazla",
                        icon: const Icon(Icons.expand_circle_down),
                        onTap: MekanOnTap),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Container MekanlarTitle(BuildContext context, String name, String neresi) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: const TextStyle(
                color: Color.fromARGB(255, 56, 56, 56),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            child: const Row(
              children: [
                Text("Daha Fazla",
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
                Icon(Icons.expand_more,
                    color: Color.fromARGB(255, 153, 153, 153)),
              ],
            ),
            onTap: () {
              Navigator.pushNamed(context, neresi);
            },
          ),
        ],
      ),
    ),
  );
}

Container MekanHakkinda(String YorumBaslik, String Yorum) {
  return Container(
    child: SizedBox(
      height: 180,
      width: 180,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(YorumBaslik),
          Text(
            Yorum,
          ),
        ],
      ),
    ),
  );
}

Container MekanlarTitle2(BuildContext context, String name, String Aciklama) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                name,
                style: const TextStyle(
                    color: Color.fromARGB(255, 56, 56, 56),
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          GestureDetector(
            child: Row(
              children: [
                Text(Aciklama,
                    style: const TextStyle(color: Colors.grey, fontSize: 13)),
              ],
            ),
            onTap: () {},
          ),
        ],
      ),
    ),
  );
}

Container MekanlarTitle3(BuildContext context, String name, String Aciklama,
    String puan, String yorumadeti) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: const TextStyle(
                    color: Color.fromARGB(255, 56, 56, 56),
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    puan,
                    style: const TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                child: Row(
                  children: [
                    Text(Aciklama,
                        style: const TextStyle(color: Colors.grey, fontSize: 13)),
                    const Icon(Icons.expand_more,
                        color: Color.fromARGB(255, 153, 153, 153)),
                  ],
                ),
                onTap: () {},
              ),
              Row(
                children: [
                  Text(yorumadeti,
                      style: const TextStyle(color: Colors.grey, fontSize: 13)),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text("Reviews",
                      style: TextStyle(color: Colors.grey, fontSize: 13)),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget StoryWidget2(String name, String avatar) {
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Column(
      children: [
        Container(
          height: 70,
          padding: const EdgeInsets.all(2.5),
          decoration: const BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
          child: Container(
            padding: const EdgeInsets.all(2.5),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(avatar),
              radius: 30,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
}

Container YorumKutusu(context, String YorumBaslik, String KullanaciAdi,
    String Tarih, String Yorum, Function()? MekanOnTap) {
  return Container(
    child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 400,
          height: 180,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 215, 215, 215),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                YorumBaslik,
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w300),
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 255, 128, 0),
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 255, 128, 0),
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 255, 128, 0),
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 255, 128, 0),
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 255, 128, 0),
                                    size: 15,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                KullanaciAdi,
                                style: const TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                Tarih,
                                style: const TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w200),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text(Yorum)],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Row mekanFoto(
  String image,
) {
  return Row(
    children: [
      Container(
        width: 180,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
      const SizedBox(
        width: 15,
      ),
    ],
  );
}

Container MekanlarTitle4(BuildContext context, String name, String Aciklama,
    String puan, String yorumadeti) {
  return Container(
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: const TextStyle(
                  color: Color.fromARGB(255, 56, 56, 56),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 10,
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 13,
                ),
                const SizedBox(
                  width: 2,
                ),
                Text(
                  puan,
                  style: const TextStyle(
                      color: Colors.orange,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
        Row(
          children: [
            GestureDetector(
              child: Row(
                children: [
                  Text(Aciklama,
                      style: const TextStyle(color: Colors.grey, fontSize: 13)),
                ],
              ),
              onTap: () {},
            ),
            const SizedBox(
              width: 10,
            ),
            Row(
              children: [
                Text(yorumadeti,
                    style: const TextStyle(color: Colors.grey, fontSize: 13)),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Column Katagori(String img, String aciklama) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 100,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
              image: AssetImage(
                img,
              ),
              fit: BoxFit.fill),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration:
                    const BoxDecoration(color: Color.fromARGB(212, 142, 122, 122)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(aciklama,
                        style: const TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(width: 15),
                    const Icon(Icons.favorite, color: Colors.white),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget profileItems(String name, String avatar) {
  return Column(
    children: [
      Container(
        height: 130, // Önceki değer: 70
        padding: const EdgeInsets.all(3), // Daha fazla boşluk ekledim
        decoration: const BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        child: Container(
          padding: const EdgeInsets.all(5), // Daha fazla boşluk ekledim
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage(avatar),
            radius: 50, // Önceki değer: 30
          ),
        ),
      ),
      const SizedBox(
        height: 5, // Önceki değer: 5
      ),
      Text(
        name,
        style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600), // Font boyutunu artırdım
        overflow: TextOverflow.ellipsis,
      ),
    ],
  );
}

Widget MesajBox(String name, String avatar, String metin, String dakika) {
  return Padding(
    padding: const EdgeInsets.only(left: 5,top: 10,right: 5),
    child: Column(
      children: [
        Container(
          height: 110,
          decoration: const BoxDecoration(
              color: Color.fromARGB(75, 158, 158, 158),
              borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right: Radius.circular(20))
            ),
          padding: const EdgeInsets.all(8.5),
          child: Container(
            padding: const EdgeInsets.all(5.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(avatar),
                    radius: 35,
                  ),
                ),
                const SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 9),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(width: 10,),
                          Text(
                            dakika,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w300),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 43,
                        width: 298,
                        child: Text(
                          metin,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w300),
                              maxLines: 2,
                          overflow: TextOverflow.ellipsis,

                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
