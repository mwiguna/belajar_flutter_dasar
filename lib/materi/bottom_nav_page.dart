import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {

  @override
  void initState() {
    super.initState();
  }

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
        ),

        DefaultTabController(
          initialIndex: 1,
          length: 3,
          child: Container(
            height: 500,
            child: Column(
              children: [
                TabBar(
                  indicatorColor: Colors.black,
                  tabs: [
                    Tab(icon: Icon(Icons.cloud_outlined, color: Colors.black)),
                    Tab(icon: Icon(Icons.beach_access_sharp, color: Colors.black)),
                    Tab(icon: Icon(Icons.brightness_5_sharp, color: Colors.black)),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Center(child: Text("It's cloudy here")),
                      Center(child: Text("It's rainy here")),
                      Center(child: Text("It's sunny here")),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

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

class PageFour extends StatefulWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://assets.mixkit.co/videos/preview/mixkit-sun-over-hills-1183-large.mp4')
        ..initialize().then((_) {
          print("SUDAH LOADING");
          setState(() {});

      _controller.addListener(() {
        if(!_controller.value.isPlaying) setState(() {});
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Container(
        //   height: 600,
        //   width: double.infinity,
        //   child: Center(
        //     child: _controller.value.isInitialized ? AspectRatio(
        //       aspectRatio: _controller.value.aspectRatio,
        //       child: VideoPlayer(_controller),
        //     ) : Container(),
        //   ),
        // ),

        Container(
          height: 670,
          width: double.infinity,
          child: Center(
            child: _controller.value.isInitialized ? VideoPlayer(_controller) : Container(),
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 250),
              child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      _controller.value.isPlaying ? _controller.pause() : _controller.play();
                    });
                  },
                  child:  Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
              ),
            ),
          ],
        )
      ],
    );
  }
}