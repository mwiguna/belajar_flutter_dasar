import 'package:flutter/material.dart';

class HalamanProfil extends StatelessWidget {
  const HalamanProfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Profil"),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: EdgeInsets.only(bottom: 20, left: 10),
              child: Text("Halaman Profil"),
            ),

            Padding(
              padding: EdgeInsets.all(8),
              child: Text("Selamat datang di profil"),
            ),

            ElevatedButton(
                //named parameter tidak berpengaruh terhadap urutan
                onPressed: (){

                },
                child: Text("Lihat"),
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white, // == color
                  primary: Colors.teal, // == backgroundColor
                ),
            ),

            Column(
              children: [
                Text("Andi-"),
                Text("17 Tahun-"),
                Text("SMP N 1 Jakarta-")
              ],
            ),

            Divider(),

            Row(
              children: [
                Text("Andi-"),
                Text("17 Tahun-"),
                Text("SMP N 1 Jakarta-")
              ],
            ),

            Divider(),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nama", style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                      Text("Kelas"),
                      Text("Sekolah"),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Ryu", style: TextStyle(
                        color: Colors.blueAccent
                      )),
                      Text("1 E"),
                      Text("Xaverius", style: TextStyle(
                        backgroundColor: Colors.amber,
                        fontStyle: FontStyle.italic
                      ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Ricel", style: TextStyle(
                          color: Colors.pink
                      )),
                      Text("1 E"),
                      Text("Xaverius", style: TextStyle(
                          backgroundColor: Colors.amber,
                          fontStyle: FontStyle.italic
                      ))
                    ],
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}

