import 'dart:convert';

class Event {
  late String nama, deskripsi, waktu; //property = variabel didalam class

  Event(this.nama, this.deskripsi, this.waktu);

  String labelDeskripsi(){
    return "Acara : " + this.deskripsi;
  }
}

Event jsonToEvent(String json){
  dynamic data = jsonDecode(json);
  Event event = Event(
    data["nama"],
    data["deskripsi"],
    data["waktu"],
  );

  return event;
}