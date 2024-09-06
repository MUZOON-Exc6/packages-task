import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Spinkiter extends StatelessWidget {
  const Spinkiter({super.key});

  @override
  Widget build(BuildContext context) {
    const spinkit = SpinKitPumpingHeart(color: Colors.red, size:50.0);
    //const sp = SpinKitWaveSpinner(color: Colors.amber);
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        title: Text("Spinkit Animayion",style: TextStyle(color: Colors.white,fontSize: 16),),
        backgroundColor: Colors.green,
      ),
      body:SafeArea(
        child: Stack(
        children: <Widget>[
        Align(
        child: Builder(
        builder: (context) => IconButton(
      icon: const Icon(Icons.play_circle_filled),
      iconSize: 100.0,
      onPressed: () => Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (_) => SpinKitFadingCircle(
            itemBuilder: (BuildContext context, int index) {
              return DecoratedBox(
                decoration: BoxDecoration(
                  color: index.isEven ? Colors.red : Colors.green,
                ),
              );
            },
          ),
          fullscreenDialog: true,
        ),
      ),
    ),
    ),
    alignment: Alignment.center,
    ),
    ],
    ),
      )
    );
  }
}
