import 'package:belajar/halaman_awal.dart';
import 'package:belajar/halaman_dialog.dart';
import 'package:belajar/halaman_gambar.dart';
import 'package:belajar/halaman_layout.dart';
import 'package:belajar/halaman_profil.dart';
import 'package:belajar/halaman_state.dart';
import 'package:belajar/halaman_textfield.dart';
import 'package:belajar/materi/materi_dialog.dart';
import 'package:belajar/materi/materi_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HalamanLayout()
    );
  }
}