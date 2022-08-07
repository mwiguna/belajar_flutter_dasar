import 'package:flutter/material.dart';

class MateriTextField extends StatelessWidget {
  const MateriTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller_username = TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                TextField(
                  controller: controller_username,
                  decoration: InputDecoration(
                    labelText: "Username"
                  ),
                ),

                SizedBox(height: 20),

                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Phone Number",
                  ),
                ),

                SizedBox(height: 20),

                Material(
                  borderRadius: BorderRadius.circular(50),
                  clipBehavior: Clip.antiAlias,
                  elevation: 5,
                  shadowColor: Colors.pink.withOpacity(0.25),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.pink.withOpacity(0.25),
                      contentPadding: EdgeInsets.all(20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(style: BorderStyle.none, width: 0)
                      ),
                      hintText: "E-mail"
                    ),
                  ),
                ),

                SizedBox(height: 20),

                ElevatedButton(
                    onPressed: (){
                      print(controller_username.text);
                    },
                    child: Text("Submit")
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
