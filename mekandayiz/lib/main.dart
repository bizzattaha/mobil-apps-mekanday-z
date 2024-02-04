
import 'package:flutter/material.dart';
import 'package:mekandayiz/screens/ArkadaslarNerdeScreen.dart';
import 'package:mekandayiz/screens/CaffeNeroScreen.dart';
import 'package:mekandayiz/screens/ColombiaScrenn.dart';
import 'package:mekandayiz/screens/DominosScreen.dart';
import 'package:mekandayiz/screens/EtkinlikScreen.dart';
import 'package:mekandayiz/screens/KomageneScreen.dart';
import 'package:mekandayiz/screens/PizzaGoScreen.dart';
import 'package:mekandayiz/screens/StarbuckScreen.dart';
import 'package:mekandayiz/screens/kesfetScreen.dart';
import 'package:mekandayiz/screens/favoriteScreen.dart';
import 'package:mekandayiz/screens/homeScreen.dart';
import 'package:mekandayiz/screens/loginScreen.dart';
import 'package:mekandayiz/screens/mesajScreens.dart';
import 'package:mekandayiz/screens/profilScreens.dart';
import 'package:mekandayiz/screens/registerScreen.dart';
import 'package:mekandayiz/screens/settingsScreens.dart';
import 'package:mekandayiz/screens/welcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mekandayız',
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => homeScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => registerScreen(),
        '/welcome': (context) => welcomeScreen(),
        '/settings': (context) => const settingsScreens(),
        '/favorite': (context) => const favoriteScreen(),
        '/kesfet': (context) => const kesfetScreen(),
        '/starbucks': (context) => const StarbuckScreen(),
        '/colombia': (context) => const ColombiaScrenn(),
        '/caffenero': (context) => const CaffeNeroScreen(),
        '/dominos': (context) => const DominosScreen(),
        '/pizzago': (context) => const PizzaGoScreen(),
        '/komagene': (context) => const KomageneScreen(),
        '/etkinlikler': (context) => const EtkinlikScreen(),
        '/arkadaslar': (context) => const ArkadaslarNerdeScreen(),
        '/profil': (context) => const profilScreens(),
        '/mesaj': (context) => mesajScreens(),
      },
      initialRoute: '/home',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}