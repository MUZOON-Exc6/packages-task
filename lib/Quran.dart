import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Quran extends StatelessWidget {
  Quran({super.key});
  AudioPlayer p = AudioPlayer();
  AudioCache ac = AudioCache();
  @override
  Widget build(BuildContext context) {
    List<String> text = ["Al_fateha", "Al_akhlas", "Al_falaq", "Al_nass"];
    List<String> audios = [
      "sound1.mp3",
      "sound2.mp3",
      "sound3.mp3",
      "sound4.mp3"
    ];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 182, 218, 183),
      appBar: AppBar(
        title: Text(
          "Qurani app",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (ctx, index) {
              return Center(
                child: InkWell(
                  onTap: () {
                    // AudioCache ac.play('${audios[index]}');
                    p.play(AssetSource('${audios[index]}'));
                  },
                  child: Container(
                    height: 70,
                    width: 300,
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 244, 242, 232)
                              .withOpacity(0.5), // لون الظل مع الشفافية
                          spreadRadius: 2, // مدى انتشار الظل
                          blurRadius: 7, // مدى ضبابية الظل
                          offset:
                              Offset(0, 3), // موقع الظل بالنسبة للحاوية (x, y)
                        ),
                      ],
                    ),
                    child: Center(
                        child: Text('${text[index]}',
                            style:
                                TextStyle(color: Colors.black, fontSize: 22))),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
