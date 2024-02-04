import 'package:flutter/material.dart';
import 'package:mekandayiz/widget/responsive.dart';

// ignore: must_be_immutable
class registerScreen extends StatelessWidget {
  registerScreen({super.key});

  Screen device3 = Screen.mobile;

  @override
  Widget build(BuildContext context) {
    
  device3 = detectScreen(MediaQuery.of(context).size);

    drawScreen2() {
      switch (device3) {
        case (Screen.mobile):
          return registerTelefon(context);
        case (Screen.tablet):
          return registerTelefon(context);
        case (Screen.destop):
          return registerTelefon(context);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Kayıt Ol"),
        backgroundColor: Colors.blue,
      ),
      body: drawScreen2(),
    );
  }

  Container registerTelefon(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.blue),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 105),
              child: Image.asset(
                "assets/images/logo2.png",
                width: 220,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 45, right: 37, top: 5),
            child: Text(
              "Ad Soyad",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
              width: 350,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              margin: const EdgeInsets.only(left: 37, right: 37, top: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    border: InputBorder.none,
                    hintText: "Adınızı ve Soyadınızı girin..."),
              )),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 45, right: 37, top: 5),
            child: Text(
              "Kullanıcı Adı",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              margin: const EdgeInsets.only(left: 37, right: 37, top: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.face),
                    border: InputBorder.none,
                    hintText: "Kullanıcı adınızı girin..."),
              )),
          const Padding(
            padding: EdgeInsets.only(left: 45, right: 37, top: 5),
            child: Text(
              "E-posta",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              margin: const EdgeInsets.only(left: 37, right: 37, top: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.mail),
                    border: InputBorder.none,
                    hintText: "E-posta adresinizi girin..."),
              )),
          const Padding(
            padding: EdgeInsets.only(left: 45, right: 37, top: 5),
            child: Text(
              "Şifre",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              margin: const EdgeInsets.only(left: 37, right: 37, top: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    border: InputBorder.none,
                    hintText: "Parolanızı girin..."),
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
              )),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              SizedBox(
                width: 225,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.restorablePushNamedAndRemoveUntil(
                        context, '/welcome', (Route<dynamic> Route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
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
              )
            ],
          )
        ],
      ),
    );
  }
}