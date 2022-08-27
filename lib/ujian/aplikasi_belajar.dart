import 'package:belajar/halaman_dialog.dart';
import 'package:belajar/halaman_gambar.dart';
import 'package:belajar/halaman_layout.dart';
import 'package:belajar/halaman_state.dart';
import 'package:belajar/halaman_textfield.dart';
import 'package:belajar/ujian/profil.dart';
import 'package:flutter/material.dart';
import 'package:belajar/data_statis.dart';

class AplikasiBelajar extends StatefulWidget {
  const AplikasiBelajar({Key? key,
    required this.welcomeTampungan,
    required this.judulHalaman }) : super(key: key);

  final String welcomeTampungan;
  final String judulHalaman;

  @override
  State<AplikasiBelajar> createState() => _AplikasiBelajarState();
}

class _AplikasiBelajarState extends State<AplikasiBelajar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFdcf9e2),
      appBar: AppBar(
        title: Text(widget.judulHalaman),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 13, bottom: 5),
                child: Container(
                  width: 375,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          pindahHalaman(Profil(), context);
                        },
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 20),
                                width: 40,
                                height: 40,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(300)
                                ),
                                child: Image.asset("assets/chair.jpg", fit: BoxFit.cover)
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(widget.welcomeTampungan + ", $nama", style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17,
                                ),),
                                Text(kelas, style: TextStyle(
                                  color: Colors.grey
                                ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ),


              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 10, bottom: 5),
                child: Container(
                  width: 375,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Daftar Halaman", style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17, color: Colors.grey
                      ),),

                      SizedBox(height: 15),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              pindahHalaman(HalamanLayout(), context);
                            },
                            child: Container(
                              margin: EdgeInsets.all(12),
                              child: Text("Layout", style: tulisanPutih),
                              decoration: BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 40),
                            ),
                          ),

                          GestureDetector(
                            onTap: (){
                              pindahHalaman(HalamanGambar(), context);
                            },
                            child: Container(
                              margin: EdgeInsets.all(12),
                              child: Text("Gambar", style: tulisanPutih.copyWith(
                                fontStyle: FontStyle.italic,
                                color: Colors.black
                              )),
                              decoration: BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 40),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              pindahHalaman(HalamanState(), context);
                            },
                            child: Container(
                              margin: EdgeInsets.all(12),
                              child: Text("State", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 45),
                            ),
                          ),

                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => HalamanTextField()
                              ));
                            },
                            child: Container(
                              margin: EdgeInsets.all(12),
                              child: Text("Textfield", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 37),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => HalamanDialog()
                              ));
                            },
                            child: Container(
                              margin: EdgeInsets.all(12),
                              child: Text("Dialog", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                              decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 42),
                            ),
                          ),

                        ],
                      )

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
