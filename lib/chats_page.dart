import 'package:flutter/material.dart';
import 'package:whatsapp_gui/home_page.dart';

class chats_page extends StatefulWidget {
  const chats_page({Key? key}) : super(key: key);

  @override
  State<chats_page> createState() => _chats_pageState();
}

class _chats_pageState extends State<chats_page> {
  @override
  var chatpage = false;
  List users = [
    {
      "name": "Noman",
      "lastmsg": "whatsup bro ?de khabar kia hora hai ",
      "time": "4:30 PM",
      "remainmsg": "3",
      "img": "assets/image.png"
    },
    {
      "name": "Faisal",
      "lastmsg": "what you doing bro ? i m coming to meet you",
      "time": "1:10 AM",
      "remainmsg": "6",
      "img": "assets/image.png"
    },
    {
      "name": "Basit",
      "lastmsg": "kia haal hn jani chalen khane pe ?",
      "time": "2:20 AM",
      "remainmsg": null,
      "img": "assets/image.png"
    },
    {
      "name": "Junaid",
      "lastmsg": "Or suna kesa hai exams ka result agaya hai ?",
      "time": "5:20 PM",
      "remainmsg": "1",
      "img": "assets/image.png"
    },
    {
      "name": "Faisal",
      "lastmsg": "what you doing bro ? i m coming to meet you",
      "time": "1:10 AM",
      "remainmsg": null,
      "img": "assets/image.png"
    },
    {
      "name": "Basit",
      "lastmsg": "kia haal hn jani chalen khane pe ?",
      "time": "2:20 AM",
      "remainmsg": null,
      "img": "assets/image.png"
    },
    {
      "name": "Junaid",
      "lastmsg": "Or suna kesa hai exams ka result agaya hai ?",
      "time": "5:20 PM",
      "remainmsg": null,
      "img": "assets/image.png"
    },
    {
      "name": "Faisal",
      "lastmsg": "what you doing bro ? i m coming to meet you",
      "time": "1:10 AM",
      "remainmsg": "2",
      "img": "assets/image.png"
    },
    {
      "name": "Basit",
      "lastmsg": "kia haal hn jani chalen khane pe ?",
      "time": "2:20 AM",
      "remainmsg": "2",
      "img": "assets/image.png"
    },
    {
      "name": "Junaid",
      "lastmsg": "Or suna kesa hai exams ka result agaya hai ?",
      "time": "5:20 PM",
      "remainmsg": "2",
      "img": "assets/image.png"
    },
    {
      "name": "Owais",
      "lastmsg": "Milne aja jani System me errors agae hn bhtt",
      "time": "6:50 PM",
      "remainmsg": null,
      "img": "assets/image.png"
    },
    {
      "name": "Owais",
      "lastmsg": "Milne aja jani System me errors agae hn bhtt",
      "time": "6:50 PM",
      "remainmsg": null,
      "img": "assets/image.png"
    },
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(users[index]["img"]),
                  ),
                  title: Text(users[index]["name"]),
                  tileColor: users[index]["remainmsg"] != null
                      ? Color.fromARGB(53, 134, 241, 189)
                      : Colors.transparent,
                  subtitle: Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Text(
                      users[index]["lastmsg"],
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  trailing: users[index]["remainmsg"] != null
                      ? Container(
                          margin: EdgeInsets.all(4),
                          child: Column(
                            children: [
                              Text(users[index]["time"]),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(50)),
                                  height: 25,
                                  width: 25,
                                  child: Text(
                                    users[index]["remainmsg"],
                                    style: TextStyle(color: Colors.white),
                                  ))
                            ],
                          ),
                        )
                      : Text(users[index]["time"]));
            }),
      ),
      // floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
