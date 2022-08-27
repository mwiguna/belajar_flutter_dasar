import 'package:belajar/halaman_awal.dart';
import 'package:belajar/halaman_layout.dart';
import 'package:belajar/ujian/aplikasi_belajar.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String username = "username";
  String password = "password";

  String welcomeAsal  = "Selamat Datang";

  TextEditingController controller_username = TextEditingController();
  TextEditingController controller_password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 101),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 19),
                  child: Icon(Icons.account_circle_outlined, size: 41,),
                ),
                Text(welcomeAsal, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 5),
              child: TextField(
                controller: controller_username,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Username", //label+js
                    hintText: "Masukkan Username Anda" //placeholder
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 15),
              child: TextField(
                controller: controller_password,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Password", //label+js
                    hintText: "Masukkan Password Anda" //placeholder
                ),
              ),
            ),

            ElevatedButton(
              onPressed: (){
                setState((){
                  username = controller_username.text;
                  password = controller_password.text;

                  if (username == "richel" && password == "tidakbenar" ) {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => AplikasiBelajar(
                            welcomeTampungan: welcomeAsal,
                            judulHalaman: "Home Aplikasi Belajar",
                        )
                    ));
                  }
                  else if(username == "" || password == ""){
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("GAGAL", style: TextStyle(
                                color: Colors.black,
                            )),
                            content: Text("Data yang Anda berikan tidak lengkap"),
                            actions: [
                              ElevatedButton(
                                  onPressed: (){
                                    Navigator.pop(context);
                                  },
                                  child: Text("OK")
                              )
                            ],
                          );
                        }
                    );
                  }else{
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("GAGAL", style: TextStyle(
                              color: Colors.black,
                            )),
                            content: Text("Data yang Anda berikan salah"),
                            actions: [
                              ElevatedButton(
                                  onPressed: (){
                                    Navigator.pop(context);
                                  },
                                  child: Text("OK")
                              )
                            ],
                          );
                        }
                    );
                  }
                });
              },
              child: Text("Login"),

            ),
          ],
        ),
      ),
    );
  }
}
