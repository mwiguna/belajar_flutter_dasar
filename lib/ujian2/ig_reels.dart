import 'dart:convert';
import 'package:belajar/ujian2/ig_data.dart';
import 'package:belajar/ujian2/model/Daftar_status.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/Status.dart';

class IGReels extends StatefulWidget {
  const IGReels({Key? key}) : super(key: key);

  @override
  State<IGReels> createState() => _IGReelsState();
}

class _IGReelsState extends State<IGReels> {

  @override
  Widget build(BuildContext context) {
    // Data Mentah (DB) > Array/Map (BE) > String Json >
    // Flutter > String Json > Decode > Bisa digunakan

    dynamic jsonDaftarUrl = jsonDecode(jsonStringDaftarUrlGambar);
    dynamic jsonDaftarStatus = jsonDecode(jsonStringDaftarStatus);

    dynamic jsonStatus = jsonDecode(jsonStringStatus);
    Status statusLama = Status(
      jsonStatus["nama"],
      jsonStatus["foto"],
      jsonStatus["status"]
    );

    Status status = jsonObjectStatus(jsonStringStatus);

    DaftarStatus daftarStatus = DaftarStatus(
      [
        Status("Kijang", jsonStatus["foto"], "Saya Kijang"),
        Status("Kangguru", jsonStatus["foto"], "Saya Kangguru"),
      ]
    );

    // Tanpa File Baru
    List<Status> daftarStatusLite = [
      Status("Kijang", jsonStatus["foto"], "Saya Kijang"),
      Status("Kangguru", jsonStatus["foto"], "Saya Kangguru"),
    ];

    return Column(
      children: [
        Image.network(jsonDaftarUrl["Panda"]),

        Divider(),
        Image.network(status.foto, width: 80),

        Text(status.nama),
        Text(status.status),

        Divider(),
        Text(daftarStatus.data[0].nama),
        Text(daftarStatus.data[1].status),

        Divider(),
        Text(daftarStatusLite[0].nama),
        Text(daftarStatusLite[0].status),

      ],
    );
  }
}
