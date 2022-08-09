import 'package:flutter/material.dart';

class MateriDialog extends StatefulWidget {
  const MateriDialog({Key? key}) : super(key: key);

  @override
  State<MateriDialog> createState() => _MateriDialogState();
}

class _MateriDialogState extends State<MateriDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: (){

                  SnackBar snackbar_widget = SnackBar(
                    behavior: SnackBarBehavior.floating,
                    margin: EdgeInsets.only(bottom: 50, left: 10, right: 10),
                    content: Text("Anda memamnggil snackbar"),
                    action: SnackBarAction(
                      label: 'Tutup',
                      onPressed: (){

                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar_widget);

                },
                child: Text("SnackBar")
              ),

              Divider(),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal
                  ),
                  onPressed: (){

                    MaterialBanner material_banner = MaterialBanner(
                      content: Text("Pesanan berhasil dibuat"),
                      actions: [
                        TextButton(
                            onPressed: (){
                              ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                            },
                            child: Text("OK")
                        ),
                      ],
                    );

                    ScaffoldMessenger.of(context).showMaterialBanner(material_banner);
                  },
                  child: Text("Material Banner")
              ),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.indigo
                  ),
                  onPressed: (){

                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Notifikasi"),
                          content: Text("Harap Lengkapi Data"),
                          actions: [
                            TextButton(onPressed: (){
                              Navigator.pop(context);
                            }, child: Text("OK")),
                          ],
                        );
                      }
                    );

                  },
                  child: Text("Alert Dialog")
              ),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.indigo
                  ),
                  onPressed: (){

                    showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            insetPadding: EdgeInsets.all(20),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("Ada Notif"),
                                  SizedBox(width: 400),
                                  TextButton(
                                      onPressed: (){
                                        Navigator.pop(context);
                                      },
                                      child: Text("OK")
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                    );

                  },
                  child: Text("Dialog")
              ),

            ],
          ),
        ),
      ),
    );
  }
}
