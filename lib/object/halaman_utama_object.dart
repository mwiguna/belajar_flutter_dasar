import 'dart:convert';

import 'package:belajar/object/data.dart';
import 'package:belajar/object/model/Judul.dart';
import 'package:belajar/object/model/Jumlah_menu.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HalamanUtamaObject extends StatefulWidget {
  const HalamanUtamaObject({Key? key}) : super(key: key);

  @override
  State<HalamanUtamaObject> createState() => _HalamanUtamaObjectState();
}

class _HalamanUtamaObjectState extends State<HalamanUtamaObject> {
  Judul judul = jsonToJudul(judulUtamaString);
  JumlahMenu jumlahMenu = jsonToJumlahMenu(jumlahMenuString);

  dynamic url = Uri.parse("http://localhost/apibelajar/index.php?data=judul_utama");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text(judul.nama),
                Text("Last Update : " + judul.last_update),

                Divider(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Hotel : " + jumlahMenu.hotel.toString()),
                    Text("Event : " + jumlahMenu.event.toString()),
                    Text("Wisata : " + jumlahMenu.wisata.toString()),
                  ],
                ),

                Divider(),

                ItemUtama("Hotel", "https://pix10.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg", "Pilihan hotel menarik"),
                ItemUtama("Event", "https://static.republika.co.id/uploads/images/inpicture_slide/pemerintah-akan-memberikan-izin-konser-musik-dan-pameran-pada_210927235643-748.jpg", "Event Menarik"),
                ItemUtama("Wisata", "https://www.disneyfoodblog.com/wp-content/uploads/2022/05/2022-wdw-EPCOT-spaceship-earth-stock_-73.jpg", "Wisata Terbaik"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Card ItemUtama(String nama, String url, String keterangan){
  return Card(
    clipBehavior: Clip.antiAlias,
    child: Stack(
      children: [
        Image.network(url, fit: BoxFit.cover, width: 450, height: 200),

        Container(
          width: 450,
          height: 200,
          color: Colors.black.withOpacity(0.55),
        ),

        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(nama, style: StyleUtama()),
              Text(keterangan, style: StyleUtama().copyWith(fontSize: 13))
            ],
          ),
        ),

      ],
    ),
  );
}

TextStyle StyleUtama(){
  return TextStyle(
    color: Colors.white,
    fontSize: 28,
    fontWeight: FontWeight.bold,
    fontFamily: "Nunito",
  );
}