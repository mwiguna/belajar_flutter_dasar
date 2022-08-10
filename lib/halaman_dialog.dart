import 'package:flutter/material.dart';

class HalamanDialog extends StatefulWidget {
  const HalamanDialog({Key? key}) : super(key: key);

  @override
  State<HalamanDialog> createState() => _HalamanDialogState();
}

class _HalamanDialogState extends State<HalamanDialog> {
  Divider baris_pembatas = Divider();

  // widgetnya
  SnackBar widget_snackbar1 = SnackBar(
    content: Text("Anda sudah berhasil klik snackbar"),
    action: SnackBarAction(
      label: "Close",
      onPressed: (){

      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(widget_snackbar1);
                  },
                  child: Text("Snackbar")
              ),

              baris_pembatas,

              ElevatedButton(
                  onPressed: (){
                    // widgetnya
                    SnackBar widget_snackbar2 = SnackBar(
                      content: Text("Anda sudah berhasil klik snackbar 2"),
                      action: SnackBarAction(
                        label: "Buka Snackbar 1",
                        onPressed: (){
                          ScaffoldMessenger.of(context).showSnackBar(widget_snackbar1);
                        },
                      ),
                    );

                    //fungsi memunculkannya
                    ScaffoldMessenger.of(context).showSnackBar(widget_snackbar2);

                    // ScaffoldMessenger.of(context).showSnackBar == alert
                  },
                  child: Text("Snackbar")
              ),

              ElevatedButton(
                  onPressed: (){

                    // Widget Banner
                    MaterialBanner widget_materialbanner1 = MaterialBanner(
                        content: Text("Anda berhasil klik banner 1"),
                        actions: [
                          ElevatedButton(
                              onPressed: (){
                                ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                              },
                              child: Text("Tutup")
                          )
                        ]
                    );

                    ScaffoldMessenger.of(context).showMaterialBanner(widget_materialbanner1);

                  },
                  child: Text("Material Banner")
              ),

              ElevatedButton(
                  onPressed: (){

                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("WARNING", style: TextStyle(
                              color: Colors.red
                            )),
                            content: Text("Ada pesan masuk"),
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

                  },
                  child: Text("Alert Dialog")
              ),

              ElevatedButton(
                  onPressed: (){

                    showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Ada notif"),
                              ),
                          );
                        }
                    );

                  },
                  child: Text("Dialog Biasa")
              ),

              // Buat halaman baru (gampang)
              // Text, kasih warna, ukuran, font (gampang)
              // Buat Button (gampang banget)
              // Masukkin Gambar (foto sendiri)
              // Pahami Row tentang Batu Bata
              // TextField

            ],
          ),
        ),
      ),
    );
  }
}