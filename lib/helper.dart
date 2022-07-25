import 'package:belajar/halaman_layout.dart';
import 'package:flutter/material.dart';

void pindahHalaman(context, dynamic page){
  Navigator.push(context, MaterialPageRoute(
      builder: (context) => page
  ));
}

ElevatedButton btn(context, dynamic page){
  return ElevatedButton(
    child: Text("Buka Halaman Layout"),
    onPressed: (){
      pindahHalaman(context, page);
    },
  );
}