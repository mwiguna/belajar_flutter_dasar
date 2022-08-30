import 'package:belajar/materi/bottom_nav_page.dart';
import 'package:flutter/material.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int pageNumber = 0;

  List<Widget> pages = [
    PageOne(),
    PageTwo(),
    PageThree(),
    Text("Hal 4"),
  ];

  Widget menu(int index, IconData icon){
    return GestureDetector(
        onTap: (){
          setState(() {
            pageNumber = index;
          });
        },
        child: Icon(icon, color: (pageNumber == index) ? Colors.redAccent : Colors.grey)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(child: pages[pageNumber]),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.teal.withOpacity(0.25)
            ),
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                menu(0, Icons.face),
                menu(1, Icons.face),
                menu(2, Icons.face),
                menu(3, Icons.face),
              ],
            ),
          )
        ],
      ),
    );

  }
}
