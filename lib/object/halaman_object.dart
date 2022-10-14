import 'package:belajar/object/data.dart';
import 'package:belajar/object/model/Event.dart';
import 'package:belajar/object/model/Tiket.dart';
import 'package:flutter/material.dart';

class HalamanObject extends StatefulWidget {
  const HalamanObject({Key? key}) : super(key: key);

  @override
  State<HalamanObject> createState() => _HalamanObjectState();
}

class _HalamanObjectState extends State<HalamanObject> {

  @override
  Widget build(BuildContext context) {
    Event event = jsonToEvent(eventDataString);
    Event event2 = jsonToEvent(eventDataString2);

    List<Tiket> daftarTiket = jsonToListTiket(dataTiketString);
    List<Tiket> daftarTiket2 = jsonToListTiket(dataTiketString2);

    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      appBar: AppBar(backgroundColor: Colors.orangeAccent),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ItemEvent(
                  event2.nama,
                  event2.labelDeskripsi(),
                  event2.waktu
              ),

              ItemEvent(
                  event.nama,
                  event.labelDeskripsi(),
                  event.waktu
              ),

              Divider(),

              Container(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for(Tiket tiket in daftarTiket)
                      ItemTiket(tiket.nama, tiket.harga)
                  ],
                ),
              ),

              Divider(),

              Container(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for(Tiket tiket in daftarTiket2)
                      ItemTiket(tiket.nama, tiket.harga)
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

Widget ItemTiket(String nama, String harga){
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(nama),
          Text(harga)
        ],
      ),
    ),
  );
}

Widget ItemEvent(String nama, String deskripsi, String waktu){
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(nama, style: TextStyle(
              fontFamily: "Nunito",
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrangeAccent),
          ),
          Divider(),
          Text(deskripsi),
          Text(waktu),
        ],
      ),
    ),
  );
}
