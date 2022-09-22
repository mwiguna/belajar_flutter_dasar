import 'package:belajar/ujian2/ig_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class IGAkun extends StatefulWidget {
  const IGAkun({Key? key}) : super(key: key);

  @override
  State<IGAkun> createState() => _IGAkunState();
}

class _IGAkunState extends State<IGAkun> {
  String urlPanda = "https://asset.kompas.com/crops/ncgvDkq11ovx_624dxbv483x_iY=/0x0:648x432/750x500/data/photo/2021/10/05/615c371c61b81.jpg";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("PandaGanz", style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                  fontFamily: "IG"
              )),
              Row(
                children: [
                  Icon(MdiIcons.cardsHeartOutline, size: 30,),
                  SizedBox(width: 7),
                  GestureDetector(
                    onTap: (){

                      showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (BuildContext context) {
                          return Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(MdiIcons.cog),
                                      SizedBox(width: 10),
                                      Text('Setting'),
                                    ],
                                  ),
                                  SizedBox(height: 15),
                                  Row(
                                    children: [
                                      Icon(MdiIcons.timelapse),
                                      SizedBox(width: 10),
                                      Text('Archive'),
                                    ],
                                  ),
                                  SizedBox(height: 15),
                                ],
                              ),
                            ),
                          );
                        },
                      );

                    },
                    child: Icon(MdiIcons.menu, size: 30)
                  )
                ],
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 70,
                height: 70,
                clipBehavior: Clip.antiAlias, // memaksa agar ikut lengkung
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100)
                ),
                child: Image.network(urlPanda, fit: BoxFit.cover),
              ),

              Column(
                children: [
                  Text("7", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                  Text("Posts"),
                ],
              ),
              Column(
                children: [
                  Text("7555", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                  Text("Followers"),
                ],
              ),
              Column(
                children: [
                  Text("12", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                  Text("Following"),
                ],
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Text("PandaGanz"),
            ],
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 130),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text("Edit Profile"),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(MdiIcons.accountPlusOutline),
            ),
          ],
        ),

        SizedBox(height: 15),

        DefaultTabController(
            length: 3,
            child: Container(
              height: 350,
              child: Column(
                children: [
                  TabBar(
                    indicatorColor: Colors.black,
                    tabs: [
                      Tab(icon: Icon(MdiIcons.table, color: Colors.black)),
                      Tab(icon: Icon(MdiIcons.play, color: Colors.black)),
                      Tab(icon: Icon(MdiIcons.accountPlusOutline, color: Colors.black)),
                    ]
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        DaftarFoto(),
                        DaftarFoto(),
                        DaftarFoto(),
                      ],
                    )
                  )
                ],
              ),
            )
        )

      ],
    );
  }

  Widget DaftarFoto(){
    return Column(
      children: [
        Row(
          children: [
            Container(
                width: 130,
                height: 130,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, left: 5),
                  child: Image.network(urlPanda, fit: BoxFit.cover),
                )
            ),
            Container(
                width: 130,
                height: 130,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, left: 5),
                  child: Image.network(urlPanda, fit: BoxFit.cover),
                )
            ),
            Container(
                width: 130,
                height: 130,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, left: 5),
                  child: Image.network(urlPanda, fit: BoxFit.cover),
                )
            ),
          ],
        ),
      ],
    );
  }
}
