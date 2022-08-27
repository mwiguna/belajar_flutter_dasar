import 'package:flutter/material.dart';

class HalamanEditProfil extends StatefulWidget {
  const HalamanEditProfil({Key? key}) : super(key: key);

  @override
  State<HalamanEditProfil> createState() => _HalamanEditProfilState();
}

class _HalamanEditProfilState extends State<HalamanEditProfil> {
  String textbutton = "Simpan";
  String username = "username";
  String tempat = "tempat";
  String tanggal_lahir = "tanggal_lahir";
  String nama_sekolah = "nama_sekolah";
  String kelas = "kelas";
  String hobi = "hobi";

  TextEditingController controller_username = TextEditingController();
  TextEditingController controller_tempat = TextEditingController();
  TextEditingController controller_tanggal_lahir = TextEditingController();
  TextEditingController controller_nama_sekolah = TextEditingController();
  TextEditingController controller_kelas = TextEditingController();
  TextEditingController controller_hobi = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDCF9E2),
      appBar: AppBar(title: Text("Profil"),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50,),

              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                width: 400,
                padding: EdgeInsets.only(top: 20, left: 15, bottom: 20, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Container(
                      width: 400,
                      child: Text("Edit Profil", textAlign: TextAlign.start, style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue
                      ),),
                    ),

                    SizedBox(height: 15,),

                    TextField(
                      controller: controller_username,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          labelText: "Username",
                          hintText: "Masukkan Username Anda"
                      ),
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Container(
                          width: 100,
                          padding: EdgeInsets.only(top: 20, bottom: 20, right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          TextField(
                            controller: controller_tempat,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                labelText: "Tempat",
                                hintText: "Masukkan Tempat Lahir Anda"
                            ),
                          ),
                        ],
                          ),
                        ),

                        Container(
                          width: 242,
                          padding: EdgeInsets.only(top: 20, bottom: 20,),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          TextField(
                            controller: controller_tanggal_lahir,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                labelText: "Tanggal Lahir",
                                hintText: "Masukkan Tanggal Lahir Anda"
                            ),
                          ),
                        ],
                          ),
                        ),

                      ],
                    ),

                    TextField(
                      controller: controller_nama_sekolah,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          labelText: "Nama Sekolah",
                          hintText: "Masukkan Nama Sekolah Anda"
                      ),
                    ),

                    SizedBox(height: 20,),

                    TextField(
                      controller: controller_kelas,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          labelText: "Kelas",
                          hintText: "Masukkan Kelas Anda"
                      ),
                    ),

                    SizedBox(height: 20,),

                    TextField(
                      controller: controller_hobi,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          labelText: "Hobi",
                          hintText: "Masukkan Hobi Anda"
                      ),
                    ),

                    SizedBox(height: 20,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: (){

                            setState ((){
                              username =controller_username.text;
                              tempat =controller_tempat.text;
                              tanggal_lahir =controller_tanggal_lahir.text;
                              nama_sekolah =controller_nama_sekolah.text;
                              kelas =controller_kelas.text;
                              hobi =controller_hobi.text;

                              if(username == "" || tempat == "" || tanggal_lahir == "" || nama_sekolah == "" || kelas == "" || hobi == ""){
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                          title: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Gagal!"),
                                              Text("Kamu belum selesai mengisi data.", style: TextStyle(
                                                  fontSize: 17
                                              ),),
                                            ],
                                          ),
                                          actions: [
                                            ElevatedButton(
                                                onPressed: (){
                                                  Navigator.pop(context);
                                                },
                                                child: Text("Tutup")
                                            )
                                          ]
                                      );
                                    }
                                );
                              }else{
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                          title: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Sukses!"),
                                              Text("Kamu berhasil menyimpan data prodil.", style: TextStyle(
                                                  fontSize: 17
                                              ),),
                                            ],
                                          ),
                                          content: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(username),
                                              Text(tempat + ", " + tanggal_lahir),
                                              Text(nama_sekolah),
                                              Text(kelas),
                                              Text(hobi),
                                            ],
                                          ),
                                          actions: [
                                            ElevatedButton(
                                                onPressed: (){
                                                  Navigator.pop(context);
                                                },
                                                child: Text("Ok")
                                            )
                                          ]
                                      );
                                    }
                                );
                              }

                            });




                          },
                          child: Text(textbutton, textAlign: TextAlign.center,),
                        ),
                      ],
                    ),

                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
