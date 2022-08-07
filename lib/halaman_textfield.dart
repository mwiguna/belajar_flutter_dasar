import 'package:flutter/material.dart';

class HalamanTextField extends StatefulWidget {
  const HalamanTextField({Key? key}) : super(key: key);

  @override
  State<HalamanTextField> createState() => _HalamanTextFieldState();
}

class _HalamanTextFieldState extends State<HalamanTextField> {
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
                decoration: InputDecoration(
                    border: OutlineInputBorder(), // ngotak
                    labelText: "Username", //label + js
                    hintText: "Masukkan Username Anda" //placeholder
                ),
              ),

              SizedBox(height: 15),

              TextField(
                keyboardType: TextInputType.number, // numeric only
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "No. HP",
                ),
              ),

              SizedBox(height: 15),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
              ),

              SizedBox(height: 15),

              TextField(
                decoration: InputDecoration(
                  filled: true, // diwarnai / tidak
                  fillColor: Colors.pink.withOpacity(0.25),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  labelText: "E-mail",
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
