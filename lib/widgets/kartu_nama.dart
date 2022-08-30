import 'package:flutter/material.dart';

Card KartuNama({
  String name = "",
  String study = "",
  String fictionStory = "",
  String urlProfil = ""
}){
  return Card(
    elevation: 2,
    shadowColor: Colors.teal,
    child: Container(
      padding: EdgeInsets.all(10),
      width: 350,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 60,
              height: 60,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100)
              ),
              child: Image.network(
                  urlProfil,
                  fit: BoxFit.cover)
          ),

          SizedBox(width: 10),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: TextStyle(
                  color: Colors.pink,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              )),
              SizedBox(height: 5),
              Text(study, style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12
              )),

              SizedBox(height: 10),
              Container(
                width: 250,
                child: Text(fictionStory,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 12,
                    )
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Card KartuTransaksi({
  String nama = "",
  String waktu = "",
})
{
  return Card(
    child: Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(nama, style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          )),
          Text(waktu),
        ],
      ),
    ),
  );
}

Container Aplikasi({
  String nama = "",
  double score = 0,
  String gambar = ""
}){
  return Container(
    color: Colors.transparent,
    padding: EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 90,
          width: 100,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15)
          ),
          child: Image.asset(gambar, fit: BoxFit.cover)
        ),
        SizedBox(height: 10),
        Text(nama, style: TextStyle(
            fontSize: 13
        )),
        Row(
          children: [
            Text(score.toString(), style: TextStyle(
              color: Colors.grey,
              fontSize: 12
            )),
            Icon(Icons.star, size: 12, color: Colors.grey)
          ],
        )
      ],
    ),
  );
}
