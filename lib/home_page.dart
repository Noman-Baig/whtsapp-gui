import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:whatsapp_gui/calls_page.dart';
import 'package:whatsapp_gui/chats_page.dart';
import 'package:whatsapp_gui/status_page.dart';

class home_Page extends StatelessWidget {
  const home_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("WhatsApp"),
                  Row(
                    children: [Icon(Icons.search), Icon(Icons.more_vert)],
                  )
                ],
              )),
          bottom: TabBar(tabs: [
            Container(margin: EdgeInsets.all(10), child: Text("Chats")),
            Container(margin: EdgeInsets.all(10), child: Text("Status")),
            Container(margin: EdgeInsets.all(10), child: Text("Calls")),
          ]),
          backgroundColor: Color.fromARGB(255, 1, 90, 5),
          toolbarHeight: 50,
        ),
        body: TabBarView(
          children: [chats_page(), status_page(), calls_page()],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 1, 90, 5),
          onPressed: () {},
          child: Icon(Icons.chat),
        ),
      ),
    );
  }
}
