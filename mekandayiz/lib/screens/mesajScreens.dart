// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mekandayiz/widget/locationBar.dart';
import 'package:mekandayiz/widget/menuItem.dart';
import 'package:mekandayiz/widget/responsive.dart';
import 'package:mekandayiz/widget/data.dart';

// ignore: must_be_immutable
class mesajScreens extends StatelessWidget {
  Screen device = Screen.mobile;
  mesajScreens({super.key});

  @override
  Widget build(BuildContext context) {
    device = detectScreen(MediaQuery.of(context).size);

    drawScreen() {
      switch (device) {
        case (Screen.mobile):
          return PeopleFrame();
        case (Screen.tablet):
          return Row(
            children: [
              SizedBox(
                  width: 280, height: double.infinity, child: PeopleFrame()),
              VerticalDivider(),
              Expanded(child: ConversationsFrame()),
            ],
          );
        case (Screen.destop):
          return Row(
            children: [
              SizedBox(width: 280, child: PeopleFrame()),
              Expanded(child: ConversationsFrame()),
              VerticalDivider(),
              SizedBox(
                  width: 280,
                  child: SizedBox.expand(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                  "/Users/bizzattaha/Downloads/mekandayiz/assets/images/bilalkarabulut.jpg"),
                              radius: 64,
                            ),
                            Text("Bilal Karabulut",style: TextStyle(fontSize: 22),),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon:
                                      Icon(CupertinoIcons.memories_badge_minus),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(CupertinoIcons.share),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(CupertinoIcons.trash),
                                ),
                              ],
                            ),
                            Divider(),
                            MenuItem(
                                title: "bizzattaha",
                                icon: Icon(Icons.person),
                                onTap: () {}),
                            Divider(),
                            MenuItem(
                                title: "bizzattaha@gmail.com",
                                icon: Icon(Icons.email),
                                onTap: () {}),
                            Divider(),
                            MenuItem(
                                title: "0 551 164 18 40",
                                icon: Icon(Icons.phone),
                                onTap: () {}),
                            Divider(),
                            MenuItem(
                                title: "İstinye Üniversitesi",
                                icon: Icon(Icons.school),
                                onTap: () {}),
                            Divider(),
                          ],
                        ),
                      ),
                    ),
                  ))
            ],
          );
      }
    }

    return Scaffold(
      drawer: null,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "SOHBETLER ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  locationBar(
                      icon: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                        size: 33,
                      ),
                      onTap: () {}),
                  SizedBox(
                    width: 15,
                  ),
                  locationBar(
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 33,
                      ),
                      onTap: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(),
            Expanded(
              child: drawScreen(),
            ),
            Container()
          ],
        ),
      ),
    );
  }

  ListView ConversationsFrame() {
    return ListView(
      children: [
        BubbleSpecialThree(
          text: 'Added iMessage shape bubbles',
          color: Color(0xFF1B97F3),
          tail: false,
          textStyle: TextStyle(color: Colors.white, fontSize: 16),
        ),
        BubbleSpecialThree(
          text: 'Please try and give some feedback on it!',
          color: Color(0xFF1B97F3),
          tail: true,
          textStyle: TextStyle(color: Colors.white, fontSize: 16),
        ),
        BubbleSpecialThree(
          text: 'Sure',
          color: Color(0xFFE8E8EE),
          tail: false,
          isSender: false,
        ),
        BubbleSpecialThree(
          text: "I tried. It's awesome!!!",
          color: Color(0xFFE8E8EE),
          tail: false,
          isSender: false,
        ),
        BubbleSpecialThree(
          text: "Thanks",
          color: Color(0xFFE8E8EE),
          tail: true,
          isSender: false,
        ),
        BubbleSpecialThree(
          text: 'Added iMessage shape bubbles',
          color: Color(0xFF1B97F3),
          tail: false,
          textStyle: TextStyle(color: Colors.white, fontSize: 16),
        ),
        BubbleSpecialThree(
          text: 'Please try and give some feedback on it!',
          color: Color(0xFF1B97F3),
          tail: true,
          textStyle: TextStyle(color: Colors.white, fontSize: 16),
        ),
        BubbleSpecialThree(
          text: 'Sure',
          color: Color(0xFFE8E8EE),
          tail: false,
          isSender: false,
        ),
        BubbleSpecialThree(
          text: "I tried. It's awesome!!!",
          color: Color(0xFFE8E8EE),
          tail: false,
          isSender: false,
        ),
        BubbleSpecialThree(
          text: "Thanks",
          color: Color(0xFFE8E8EE),
          tail: true,
          isSender: false,
        )
      ],
    );
  }

  ListView PeopleFrame() {
    return ListView.builder(
      itemCount: people.length,
      itemBuilder: (context, index) => Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(people[index]["avatarr"].toString()),
              radius: 32,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      people[index]["name"].toString(),
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      people[index]["LastMsg"].toString(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 140, 140, 140)),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Text("${(people[index]["date"] as DateTime).hour}:${(people[index]["date"] as DateTime).minute}"),
                Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: Text(
                      people[index]["unread"].toString(),
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
