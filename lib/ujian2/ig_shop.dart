import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class IGShop extends StatefulWidget {
  const IGShop({Key? key}) : super(key: key);

  @override
  State<IGShop> createState() => _IGShopState();
}

class _IGShopState extends State<IGShop> {
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
              Text("Shop", style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                  fontFamily: "IG"
              ),),
              Row(
                children: [
                  Icon(MdiIcons.cardsHeartOutline, size: 30,),
                  SizedBox(
                    width: 7,
                  ),
                  Icon(MdiIcons.menu, size: 30,)
                ],
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade300,
                isDense: true,
                contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(width: 0, style: BorderStyle.none)
                ),
                hintText: "Search"
            ),
            style: TextStyle(fontSize: 14),
          ),
        ),

        SizedBox(height: 10),

        Container(
          height: 32,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              labelShop("Shops"),
              labelShop("Videos"),
              labelShop("Editor's Picks"),
              labelShop("Editor's Picks"),
              labelShop("Editor's Picks"),
            ],
          ),
        ),

        SizedBox(height: 10),

        duaFoto(),
        duaFoto(),
        duaFoto(),
        duaFoto(),
        duaFoto(),

      ],
    );
  }

  Row duaFoto(){
    return Row(
      children: [
        Container(
            width: 195,
            height: 195,
            child: Padding(
              padding: const EdgeInsets.only(top: 5, left: 5),
              child: Image.network(urlPanda, fit: BoxFit.cover),
            )
        ),
        Container(
            width: 195,
            height: 195,
            child: Padding(
              padding: const EdgeInsets.only(top: 5, left: 5),
              child: Image.network(urlPanda, fit: BoxFit.cover),
            )
        ),
      ],
    );
  }

  Widget labelShop(String label){
    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 5),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Text(label),
      ),
    );
  }
}
