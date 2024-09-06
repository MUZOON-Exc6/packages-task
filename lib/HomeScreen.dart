import 'package:appbar/Chats.dart';
import 'package:appbar/Quran.dart';
import 'package:appbar/Spinkiter.dart';
import 'package:appbar/showslider.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green[700],
            title: Text(
              "Packges Task",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            bottom: TabBar(tabs: [
              Text("Spinkit",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              Text("Crousel",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              Text("Qurany",
                  style: TextStyle(fontSize: 20, color: Colors.white))
            ]),
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            child: TabBarView(
              children: [Spinkiter(), ImageSliderDemo(), Quran()],
            ),
          ),
        ));
  }
}
