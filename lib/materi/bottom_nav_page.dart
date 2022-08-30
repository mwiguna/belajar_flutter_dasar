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
          height: 100,
          width: 500,
          child: Center(child: Text("Page 1")),
        ),

        TextButton(
          onPressed: (){

            showModalBottomSheet(
              context: context,
              backgroundColor: Colors.transparent,
              builder: (BuildContext context) {
                return Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20))
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('Modal BottomSheet'),
                      ],
                    ),
                  ),
                );
              },
            );

          },
          child: Text("Show Bottom Sheet"),
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

        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Colors.black,
                width: 3.0,
              ),
              top: BorderSide(
                color: Colors.black,
                width: 3.0,
              ),
            ),
          ),
        )

      ],
    );
  }
}


class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {

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
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
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

        Container(
          padding: EdgeInsets.all(15),
          height: 450,
          child: GridView.count(
            crossAxisCount: 2,
            children: [
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