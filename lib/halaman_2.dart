import 'package:flutter/material.dart';

class HalamanKedua extends StatefulWidget {
  const HalamanKedua({Key? key}) : super(key: key);

  @override
  State<HalamanKedua> createState() => _HalamanKeduaState();
}

class _HalamanKeduaState extends State<HalamanKedua> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Halo !"),
        Text("Halaman 2")
      ],
    );
  }
}
