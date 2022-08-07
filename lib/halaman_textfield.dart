import 'package:flutter/material.dart';

class HalamanTextField extends StatefulWidget {
  const HalamanTextField({Key? key}) : super(key: key);

  @override
  State<HalamanTextField> createState() => _HalamanTextFieldState();
}

class _HalamanTextFieldState extends State<HalamanTextField> {
  String username = "username";
  String no_hp = "no_hp";
  String password = "password";
  String email = "email";
  String textbutton = "Klik";

  TextEditingController controller_username = TextEditingController();
  TextEditingController controller_nohp = TextEditingController();
  TextEditingController controller_password = TextEditingController();
  TextEditingController controller_email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text("Halaman TextField"),

              TextField(
                controller: controller_username,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), // ngotak
                    labelText: "Username", //label + js
                    hintText: "Masukkan Username Anda" //placeholder
                ),
              ),

              SizedBox(height: 15),

              TextField(
                controller: controller_nohp,
                keyboardType: TextInputType.number, // numeric only
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "No. HP",
                ),
              ),

              SizedBox(height: 15),

              TextField(
                controller: controller_password,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
              ),

              SizedBox(height: 15),

              TextField(
                controller: controller_email,
                decoration: InputDecoration(
                  filled: true, // diwarnai / tidak
                  fillColor: Colors.pink.withOpacity(0.2),
                  contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(width: 0, style: BorderStyle.none)
                  ),
                  hintText: "E-mail",
                ),
              ),

              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      username = controller_username.text;
                      no_hp = controller_nohp.text;
                      password = controller_password.text;
                      email = controller_email.text;

                      if(username == "" || no_hp == "" || password == "" || email == ""){
                        textbutton = "Maaf, lengkapi data";
                      } else {
                        textbutton = "Berhasil";
                      }

                      // or = salah satu benar, true
                      // and = salah satu salah, false
                    });
                  },
                  child: Text(textbutton)
              ),

              Text(username),
              Text(no_hp),
              Text(password),
              Text(email),

            ],
          ),
        ),
      ),
    );
  }
}
