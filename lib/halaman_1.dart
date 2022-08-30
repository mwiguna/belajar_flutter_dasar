import 'package:belajar/widgets/kartu_nama.dart';
import 'package:flutter/material.dart';

class HalamanPertama extends StatefulWidget {
  const HalamanPertama({Key? key}) : super(key: key);

  @override
  State<HalamanPertama> createState() => _HalamanPertamaState();
}

class _HalamanPertamaState extends State<HalamanPertama> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Halo !"),
        Text("Halaman 1"),

        Card(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text("hi, ini card!"),
          ),
        ),

        Card(
          child: Container(
            padding: const EdgeInsets.all(10),
            width: 350,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100)
                  ),
                  child: Image.network(
                      "https://awsimages.detik.net.id/community/media/visual/"
                      "2021/04/30/disaster-girl.png?w=700&q=90",
                      fit: BoxFit.cover)
                ),

                SizedBox(width: 10),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Rychelle Trita", style: TextStyle(
                      color: Colors.pink,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    )),
                    SizedBox(height: 5),
                    Text("Chemistry", style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12
                    )),

                    SizedBox(height: 10),
                    Container(
                      width: 250,
                      child: Text("I love chemistry since i was born, "
                          "when i was kid i played with fire everyday, "
                          "until i burn my friend. I say sorry to her, "
                          "but she never forgive me. The end.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 12,
                          )
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        kartuNama(
          name: "Jonathan Ferguso",
          study: "Computer Science",
          fictionStory: "Nothing. My life is flat.",
          urlProfil: "https://image.engoo.com/teacher/27909/1_201810161232.png"
        ),

        kartuNama(
          name: "Alucard",
          study: "Fighter",
          fictionStory: "Not bad.",
          urlProfil: "https://static.wikia.nocookie.net/mobile-legends/images/0/01/Hero071-portrait.png"
        ),

      kartuNama(
        name: "Snow White",
        study: "Princess",
        fictionStory: "Snow is white. Sky is blue",
        urlProfil: "https://lumiere-a.akamaihd.net/v1/images/ct_snowwhite_upcportalreskin_20694_eb571c22.jpeg"
        ),

      ],
    );
  }
}
