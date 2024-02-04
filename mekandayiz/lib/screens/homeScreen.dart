import 'package:flutter/material.dart';
import 'package:mekandayiz/widget/responsive.dart';

// ignore: must_be_immutable
class homeScreen extends StatelessWidget {
  Screen device1 = Screen.mobile;
  homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    device1 = detectScreen(MediaQuery.of(context).size);

    drawScreen1() {
      switch (device1) {
        case (Screen.mobile):
          return telefonSayfa(context);
        case (Screen.tablet):
          return TabletSayfa(context);
        case (Screen.destop):
          return TabletSayfa(context);
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: drawScreen1(),
    );
  }

  Container telefonSayfa(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.blue),
      child: Center(
        child: Column(
          children: [
            Container(
                child: Image.asset(
              "assets/images/logo22.png",
              height: 300,
              width: 300,
            )),
            const Text(
              "MEKANDAYIZ",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const Text(
              "Türkiyenin En Lezzetli Köşeleri...",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 250,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.pink,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                      ),
                      child: const Text('Giriş Yap'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 12),
                    ),
                    child: const Text('Kayıt Ol'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/1024px-Google_%22G%22_logo.svg.png',
                        height: 30,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.network(
                        'https://assets.stickpng.com/images/5ecec78673e4440004f09e77.png',
                        height: 30,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.network(
                        'https://seeklogo.com/images/T/twitter-x-logo-0339F999CF-seeklogo.com.png?v=638264860180000000',
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    backgroundColor: const Color.fromARGB(0, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 12),
                  ),
                  child: const Text('Mekan Sahibi misin?'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Container TabletSayfa(BuildContext context) {
  return Container(
    decoration: const BoxDecoration(color: Colors.blue),
    child: Center(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Row(
              children: [
                Image.asset(
                  "/Users/bizzattaha/Downloads/mekandayiz/assets/images/logo2.png",
                  height: 700,
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "MEKANDAYIZ",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Türkiyenin En Lezzetli Köşeleri...",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 12),
                    ),
                    child: const Text('Giriş Yap'),
                  ),
                ),
              ),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                  ),
                  child: const Text('Kayıt Ol'),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: const Color.fromARGB(0, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 12),
                    ),
                    child: const Text('Mekan Sahibi misin?'),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            width: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/1024px-Google_%22G%22_logo.svg.png',
                  height: 40,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 30,
                ),
                Image.network(
                  'https://assets.stickpng.com/images/5ecec78673e4440004f09e77.png',
                  height: 40,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 30,
                ),
                Image.network(
                  'https://seeklogo.com/images/T/twitter-x-logo-0339F999CF-seeklogo.com.png?v=638264860180000000',
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
