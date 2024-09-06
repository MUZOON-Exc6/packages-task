import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSliderDemo extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber[300],
          title: Text("MC Dounals .."),
        ),
        body: Container(
          color: Colors.amber[500],
          child: ListView(
            children: [
              SizedBox(
                height: 90,
              ),
              CarouselSlider(
                  items: [
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/food2.jpg"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white
                                  .withOpacity(0.5), // لون الظل مع الشفافية
                              spreadRadius: 5, // مدى انتشار الظل
                              blurRadius: 7, // مدى ضبابية الظل
                              offset: Offset(0, 3),
                            )
                          ]),
                    ),
                    Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/food3.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.white
                                      .withOpacity(0.5), // لون الظل مع الشفافية
                                  spreadRadius: 5, // مدى انتشار الظل
                                  blurRadius: 7, // مدى ضبابية الظل
                                  offset: Offset(0, 3))
                            ])),
                    Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/food1.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white
                                    .withOpacity(0.5), // لون الظل مع الشفافية
                                spreadRadius: 5, // مدى انتشار الظل
                                blurRadius: 7, // مدى ضبابية الظل
                                offset: Offset(0, 3),
                              )
                            ])),
                    Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/food4.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white
                                    .withOpacity(0.5), // لون الظل مع الشفافية
                                spreadRadius: 5, // مدى انتشار الظل
                                blurRadius: 7, // مدى ضبابية الظل
                                offset: Offset(0, 3),
                              )
                            ]))
                  ],
                  options: CarouselOptions(
                    height: 400,
                    aspectRatio: 16 / 8,
                    autoPlayInterval: Duration(seconds: 2),
                    viewportFraction: 0.6,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 1000),
                    enlargeCenterPage: true,
                    enlargeFactor: 6.5,
                    reverse: true,
                  ))
            ],
          ),
        ));
  }
}
