import 'package:belajar/ujian2/ig_data.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class IGAwal extends StatefulWidget {
  const IGAwal({Key? key}) : super(key: key);

  @override
  State<IGAwal> createState() => _IGAwalState();
}

class _IGAwalState extends State<IGAwal> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(judulAplikasi, style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                  fontFamily: "IG"
              ),),
              Row(
                children: [
                  Icon(MdiIcons.plusBoxOutline, size: 30,),
                  SizedBox(width: 7),
                  Icon(MdiIcons.cardsHeartOutline, size: 30,),
                  SizedBox(width: 7),
                  Icon(MdiIcons.chatProcessingOutline, size: 30,)
                ],
              ),
            ],
          ),
        ),

        SizedBox(
          height: 5,
        ),

        Container(
          height: 90,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              for(String nama in daftarNama) fotoKecil(nama, daftarUrlGambar[nama]!),
            ],
          ),
        ),

        Divider(height: 1, thickness: 1),
        SizedBox(height: 5),

        for(Map<String, String> item in daftarStatus) itemFoto(
          daftarUrlGambar[item["nama"]]!,
          item["foto"]!,
          item["nama"]!,
          item["status"]!
        ),

        // for(String nama in daftarNama) itemFoto(
        //     daftarUrlGambar[nama]!, nama, "Status Statik"
        // ),

      ],
    );
  }
}

Padding fotoKecil (String nama, String url){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: Column(
      children: [
        Container(
          width: 60,
          height: 60,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100)
          ),
          child: Image.network(url,
            fit: BoxFit.cover,),
        ),
        SizedBox(height: 5),
        Text(nama)
      ],
    ),
  );
}

Column itemFoto(String profil, String url, String nama, String status){
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: Column(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Image.network(profil, fit: BoxFit.cover,),
                      ),
                      SizedBox(height: 5,),
                    ],
                  ),
                ),
                Text(nama),
              ],
            ),
            Icon(MdiIcons.dotsVertical),
          ],
        ),
      ),

      Container(
          height: 370,
          child: Image.network(url, fit: BoxFit.cover,)
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(MdiIcons.cardsHeartOutline, size: 30,),
                SizedBox(width: 17,),
                Icon(MdiIcons.chatProcessingOutline, size: 30,),
                SizedBox(width: 17,),
                Icon(MdiIcons.send, size: 30,),
                SizedBox(width: 17,),
              ],
            ),
            Icon(MdiIcons.bookmarkOutline, size: 30,),
          ],
        ),
      ),

      Container(
        padding: EdgeInsets.only(left: 10),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("10 likes", style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 7,),
            Text(nama, style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
            Text(status),
            Row(
              children: [
                Text("2 days ago", style: TextStyle(color: Colors.grey, fontSize: 12),),
                Icon(MdiIcons.circleSmall),
                Text("See translation", style: TextStyle(fontSize: 12),),
              ],
            ),
            Divider(),
          ],
        ),
      )
    ],
  );
}