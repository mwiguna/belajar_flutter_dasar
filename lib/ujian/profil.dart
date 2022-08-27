
import 'package:belajar/data_statis.dart';
import 'package:belajar/ujian/edit_profil.dart';
import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  String nama = "Richel Graciela Zhang";
  String tempat_lahir = "Jambi";
  String tanggal_lahir = "08 Juli 2010";
  String sekolah = "SMP Sariputra";
  String kelas = "7A";
  String hobi = "Makan dan Tidur";
  String sembunyikan_data_sekolah = "Sembunyikan Data Sekolah";
  bool status_tampil = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDCF9E2),
      appBar: AppBar(
        title: Text("Profil"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
                width: 390,
                margin: EdgeInsets.only(top: 15,left: 15,right: 15,bottom: 0),
                padding: EdgeInsets.only(top: 20,left: 15,right: 15,bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => HalamanEditProfil()
                        ));
                      },
                      child: Row(
                        children: [
                          Container(
                              width: 60,
                              height: 60,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(150)
                              ),
                              child: Image.asset("assets/Karma.png", fit: BoxFit.cover,)
                          ),
                          Text("   Richel Cantik", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 21),
                      child: Text("Profil", style: TextStyle(fontWeight: FontWeight.bold,color : Colors.blue),),
                    ),
                    pembatas_biru,

                    jarak,
                    labelProfil("Nama Lengkap"),
                    labelData(nama),
                    pembatas,

                    jarak,
                    labelProfil("Tempat, Tanggal Lahir"),
                    Text("$tempat_lahir, $tanggal_lahir", style: TextStyle(fontSize: 13, color: Colors.grey),),
                    Divider(color: Colors.grey, thickness: 0.75,),

                    jarak,
                    Text("Umur", style: TextStyle( fontWeight: FontWeight.bold, fontSize: 18),),
                    Text("$umur tahun", style: TextStyle(fontSize: 13, color: Colors.grey),),
                    Divider(color: Colors.grey, thickness: 0.75,),

                    if(status_tampil) jarak,
                    if(status_tampil) Text("Sekolah", style: TextStyle( fontWeight: FontWeight.bold, fontSize: 18),),
                    if(status_tampil) Text(sekolah, style: TextStyle(fontSize: 13, color: Colors.grey),),
                    if(status_tampil) Divider(color: Colors.grey, thickness: 0.75,),

                    if(status_tampil) jarak,
                    if(status_tampil) Text("Kelas", style: TextStyle( fontWeight: FontWeight.bold, fontSize: 18),),
                    if(status_tampil) Text(kelas, style: TextStyle(fontSize: 13, color: Colors.grey),),
                    if(status_tampil) Divider(color: Colors.grey, thickness: 0.75,),

                    jarak,
                    Text("Hobi", style: TextStyle( fontWeight: FontWeight.bold, fontSize: 18),),
                    Text(hobi, style: TextStyle(fontSize: 13, color: Colors.grey),),
                    Divider(color: Colors.grey, thickness: 0.75,),

                    jarakDinamis(20),
                    GestureDetector(
                      onTap: (){
                        setState((){
                          if (status_tampil){
                            sembunyikan_data_sekolah = "Tampilkan Data Sekolah";
                            status_tampil = false;
                          }else{
                            sembunyikan_data_sekolah = "Sembunyikan Data Sekolah";
                            status_tampil = true;
                          }
                        });
                      },
                      child: Text(sembunyikan_data_sekolah, style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 20
                      ),),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
                ),
            ),
          ],
        ),
      ),
    );
  }
}
