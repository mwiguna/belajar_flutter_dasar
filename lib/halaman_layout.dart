import 'package:flutter/material.dart';

class HalamanLayout extends StatelessWidget {
  const HalamanLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Halaman Layout"),
        backgroundColor: Colors.pink,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 15), // Left, Top, Right, Bottom
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    color: Colors.teal.withOpacity(0.25),
                    width: 400, // lebar = horizontal
                    height: 60, // tinggi = vertical
                    child: Text("Halo, ini halaman layout", style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.bold
                    ))
                ),

                Divider(thickness: 5, color: Colors.amber),
                SizedBox(height: 15), // Widget Kosong dengan tinggi 15

                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.blueAccent,
                  child: Column(
                    children: [
                      Text("Container", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white
                      )),
                      Text("Bisa Memuat Banyak Widget"),
                      Text("Konten"),
                    ],
                  ),
                ),

                SizedBox(height: 50), // Widget Kosong dengan tinggi 50

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.deepPurpleAccent,
                      child: Text("Container A"),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.deepPurpleAccent,
                      child: Text("Container B"),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.deepPurpleAccent,
                      child: Text("Container C"),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.orange,
                      width: 200,
                      child: Text("Konten"),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.orange,
                      width: 100,
                      child: Text("Konten"),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.orange,
                      width: 100,
                      child: Text("Konten 2"),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.orange,
                      width: 200,
                      child: Text("Konten 2", textAlign: TextAlign.center),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.orange,
                      width: 200,
                      height: 500,
                      child: Text("Konten 3"),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.orange,
                      width: 100,
                      height: 500,
                      child: Text("Konten 3"),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.orange,
                      width: 100,
                      child: Text("Konten 4"),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.orange,
                      width: 200,
                      child: Text("Konten 4", textAlign: TextAlign.center),
                    ),
                  ],
                ),

                SizedBox(height: 20),

                GestureDetector( // Widget untuk membuat semua widget selain button bisa di klik
                  onTap: (){
                    Navigator.pop(context); // pop artinya kembali
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(15) // melengkung sudut-sudut
                    ),
                    child: Text("Kembali"),
                  ),
                ),

                SizedBox(height: 80)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
