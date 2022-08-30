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
        Text("Daftar Anggota", style: TextStyle(fontSize:  22, fontWeight: FontWeight.bold)),

        SizedBox(height: 30),

        Container(
          height: 450,
          child: ListView( // child 1 widget, children banyak widget (dalam list [])
            children: [
              KartuNama(
                  name: "Rychelle Trita",
                  study: "Chemistry",
                  fictionStory: "I love chemistry since i was born, "
                      "when i was kid i played with fire everyday, "
                      "until i burn my friend. I say sorry to her, "
                      "but she never forgive me. The end.",
                  urlProfil: "https://awsimages.detik.net.id/community/media/visual/"
                      "2021/04/30/disaster-girl.png?w=700&q=90"
              ),
              KartuNama(
                  name: "Jonathan Ferguso",
                  study: "Computer Science",
                  fictionStory: "Nothing. My life is flat.",
                  urlProfil: "https://image.engoo.com/teacher/27909/1_201810161232.png"
              ),
              KartuNama(
                  name: "Alucard",
                  study: "Fighter",
                  fictionStory: "Not bad.",
                  urlProfil: "https://static.wikia.nocookie.net/mobile-legends/images/0/01/Hero071-portrait.png"
              ),
              KartuNama(
                  name: "Snow White",
                  study: "Princess",
                  fictionStory: "Snow is white. Sky is blue",
                  urlProfil: "https://lumiere-a.akamaihd.net/v1/images/ct_snowwhite_upcportalreskin_20694_eb571c22.jpeg"
              ),
              KartuNama(
                  name: "Snow White",
                  study: "Princess",
                  fictionStory: "Snow is white. Sky is blue",
                  urlProfil: "https://lumiere-a.akamaihd.net/v1/images/ct_snowwhite_upcportalreskin_20694_eb571c22.jpeg"
              ),
              KartuNama(
                  name: "Snow White",
                  study: "Princess",
                  fictionStory: "Snow is white. Sky is blue",
                  urlProfil: "https://lumiere-a.akamaihd.net/v1/images/ct_snowwhite_upcportalreskin_20694_eb571c22.jpeg"
              ),
              KartuNama(
                  name: "Snow White",
                  study: "Princess",
                  fictionStory: "Snow is white. Sky is blue",
                  urlProfil: "https://lumiere-a.akamaihd.net/v1/images/ct_snowwhite_upcportalreskin_20694_eb571c22.jpeg"
              ),
              KartuNama(
                  name: "Snow White",
                  study: "Princess",
                  fictionStory: "Snow is white. Sky is blue",
                  urlProfil: "https://lumiere-a.akamaihd.net/v1/images/ct_snowwhite_upcportalreskin_20694_eb571c22.jpeg"
              ),
              KartuNama(
                  name: "Snow White",
                  study: "Princess",
                  fictionStory: "Snow is white. Sky is blue",
                  urlProfil: "https://lumiere-a.akamaihd.net/v1/images/ct_snowwhite_upcportalreskin_20694_eb571c22.jpeg"
              ),
            ],
          ),
        ),




      ],
    );
  }
}
