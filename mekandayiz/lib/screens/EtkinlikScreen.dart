import 'package:flutter/material.dart';
import 'package:mekandayiz/widget/locationBar.dart';

class EtkinlikScreen extends StatelessWidget {
  const EtkinlikScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Popüler Etkinlikler"),
      ),
        body: Center(
      child: Column(
        children: [
          Container(),
          const Expanded(child: Row(
            children: [
              Column(
                children: [
                  Text("data")
                ],
              )
            ],
          ),),
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
