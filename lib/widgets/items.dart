import 'package:flutter/material.dart';

Row itemMateri(context, String namaHalaman, dynamic halaman){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(namaHalaman),
      ElevatedButton(
        child: Text("Buka"),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => halaman
          ));
        },
      ),
    ],
  );
}

// Agar bisa digunakan berkali kali tanpa tulis ulang
Text judulMenu(String judul){
  return Text(judul, style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.teal,
      fontFamily: "Nunito"
  ));
}


Column daftarText(
    String data,
    {String nama = "", String kelas = ""}
  ){
  return Column(
    children: [
      Text(data),
      Text(nama),
      Text(kelas),
    ],
  );
}