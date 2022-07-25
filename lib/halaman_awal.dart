import 'package:belajar/halaman_layout.dart';
import 'package:belajar/halaman_profil.dart';
import 'package:belajar/helper.dart';
import 'package:flutter/material.dart';

class HalamanAwal extends StatelessWidget {
  const HalamanAwal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: SafeArea(

              child: Column(
                  children: [
                    Text("Halaman Awal"),

                    Divider(),
                    Text("Selamat Datang", style: TextStyle(color: Colors.red)),
                    Text("Aplikasi Pertama", style: TextStyle(color: Colors.red,
                        backgroundColor: Colors.yellow)),

                    ElevatedButton(
                      child: Text("Buka Halaman Layout"),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => HalamanLayout()
                        ));
                      },
                    ),



                    // Container(
                    //     width: 100,
                    //     height: 100,
                    //     clipBehavior: Clip.antiAlias,
                    //     decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(50)
                    //     ),
                    //     child: Image.asset("assets/bigtree.png", fit: BoxFit.cover)
                    // ),

                  ]
              ),

            )
    );
  }
}

