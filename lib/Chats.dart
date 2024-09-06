import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Chats extends StatelessWidget {
  Chats({super.key});
  List<dynamic> items = [
    "images/food1.jpg",
    "images/food2.jpg",
    "images/food3.jpg",
    "images/food4.jpg",
    "images/food5.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    int index = items.length;
    return CarouselSlider(
      options: CarouselOptions(height: 200.0),
      items: items.map((i) {
        return Container(
          //height: MediaQuery.of(context).size.height / 2,
          width: 200,
          margin: EdgeInsets.all(15),
          color: Colors.amber,
          child: Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  /* image: DecorationImage(
                        image: AssetImage('${items[index]}'),
                        fit: BoxFit.cover)),*/
                ),
                child: Image(image: AssetImage('${items[index]}')),
              );
            },
          ),
        );
      }).toList(),
    );
  }
}
