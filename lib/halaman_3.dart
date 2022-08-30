import 'package:belajar/widgets/kartu_nama.dart';
import 'package:flutter/material.dart';

class HalamanKetiga extends StatefulWidget {
  const HalamanKetiga({Key? key}) : super(key: key);

  @override
  State<HalamanKetiga> createState() => _HalamanKetigaState();
}

class _HalamanKetigaState extends State<HalamanKetiga> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Stack(
            children: [
              TextField(
                decoration: InputDecoration(
                  filled: true, // diwarnai / tidak
                  fillColor: Colors.pink.withOpacity(0.05),
                  contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 60),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(width: 0, style: BorderStyle.none)
                  ),
                  hintText: "Search for apps",
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 14, left: 13),
                  child: Icon(Icons.search, size: 20)),
            ],
          ),

          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text("Social Networking",
                    textAlign: TextAlign.start, style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ))
              ),
              Icon(Icons.arrow_forward),
            ],
          ),

          SizedBox(height: 10),

          Container(
            height: 160,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Aplikasi(
                    nama: "Instagram",
                    score: 4.1,
                    gambar: "assets/meeting.jpg"
                ),
                Aplikasi(
                    nama: "Instagram",
                    score: 4.1,
                    gambar: "assets/meeting.jpg"
                ),
                Aplikasi(
                    nama: "Instagram",
                    score: 4.1,
                    gambar: "assets/meeting.jpg"
                ),
                Aplikasi(
                    nama: "Instagram",
                    score: 4.1,
                    gambar: "assets/meeting.jpg"
                ),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  child: Text("Recommended for you",
                      textAlign: TextAlign.start, style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ))
              ),
              Icon(Icons.arrow_forward),
            ],
          ),

          SizedBox(height: 10),

          Container(
            height: 160,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Aplikasi(
                    nama: "Instagram",
                    score: 4.1,
                    gambar: "assets/meeting.jpg"
                ),
                Aplikasi(
                    nama: "Instagram",
                    score: 4.1,
                    gambar: "assets/meeting.jpg"
                ),
                Aplikasi(
                    nama: "Instagram",
                    score: 4.1,
                    gambar: "assets/meeting.jpg"
                ),
                Aplikasi(
                    nama: "Instagram",
                    score: 4.1,
                    gambar: "assets/meeting.jpg"
                ),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  child: Text("Tools & Utility",
                      textAlign: TextAlign.start, style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ))
              ),
              Icon(Icons.arrow_forward),
            ],
          ),

          SizedBox(height: 10),

          Container(
            height: 160,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Aplikasi(
                    nama: "Microsoft Word",
                    score: 4.1,
                    gambar: "assets/meeting.jpg"
                ),
                Aplikasi(
                    nama: "Microsoft Word",
                    score: 4.1,
                    gambar: "assets/meeting.jpg"
                ),
                Aplikasi(
                    nama: "Microsoft Word",
                    score: 4.1,
                    gambar: "assets/meeting.jpg"
                ),
                Aplikasi(
                    nama: "Microsoft Word",
                    score: 4.1,
                    gambar: "assets/meeting.jpg"
                ),
                Aplikasi(
                    nama: "Microsoft Word",
                    score: 4.1,
                    gambar: "assets/meeting.jpg"
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

// Ternary Operator = If else singkat
// (true) ? "ini jika benar" : "ini salah";