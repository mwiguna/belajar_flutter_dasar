import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 800,
          width: 500,
          color: Colors.redAccent,
          child: Center(child: Text("Page 1")),
        )
      ],
    );
  }
}

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {

  Widget cardNama(){
    return Card(
      margin: EdgeInsets.all(5),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text("Andika"),
            Text("7a"),
            Text("SMP JAYA BAKTI S"),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          padding: EdgeInsets.all(15),
          height: 350,
          child: ListView(
            children: [
              cardNama(),
              cardNama(),
              cardNama(),
              cardNama(),
              cardNama(),
              cardNama(),
              cardNama(),
              cardNama(),
              cardNama(),
              cardNama(),
              cardNama(),
              cardNama(),
            ],
          ),
        ),

      ],
    );
  }
}