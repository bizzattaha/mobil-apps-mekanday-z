import 'package:flutter/material.dart';
import 'package:mekandayiz/widget/menuItem.dart';
import 'package:mekandayiz/widget/profileItem.dart';

class settingsScreens extends StatelessWidget {
  const settingsScreens({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Profile"),
        ),
        body: Center(
          child: Column(
            children: [
              const profileItem(
                  avatar: "assets/images/logo4.jpg",
                  name: "Bilal Karabulut 221216055"),
              const Divider(),
              MenuItem(
                  title: "bizzattaha", icon: const Icon(Icons.person), onTap: () {}),
              const Divider(),
              MenuItem(
                  title: 'bizzattaha@gmail.com',
                  icon: const Icon(Icons.email),
                  onTap: () {}),
              const Divider(),
              MenuItem(
                  title: "0 551 164 18 40",
                  icon: const Icon(Icons.phone),
                  onTap: () {}),
              const Divider(),
              MenuItem(
                  title: "İstinye Üniversitesi",
                  icon: const Icon(Icons.school),
                  onTap: () {}),
              const Divider(),
              MenuItem(
                  title: "Bilgisayar Programcılığı",
                  icon: const Icon(Icons.book),
                  onTap: () {}),
              const Divider(),
              MenuItem(
                  title: "Bildirimler Açık",
                  icon: const Icon(Icons.notifications),
                  onTap: () {}),
              const Divider(),
              MenuItem(
                  title: "İstanbul/Pendik",
                  icon: const Icon(Icons.location_city),
                  onTap: () {}),
              const Divider(),
              MenuItem(
                  title: "Version 1.0",
                  icon: const Icon(Icons.splitscreen),
                  onTap: () {}),
              const Divider(),
              const SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: () {
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    }
                  },
                  child: const Text("Go Back"))
            ],
          ),
        ));
  }
}
