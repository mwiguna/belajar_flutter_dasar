import 'dart:convert';

class JumlahMenu {
  late int hotel, event, wisata; //property = variabel didalam class

  JumlahMenu(this.hotel, this.event, this.wisata);
}

JumlahMenu jsonToJumlahMenu(String json){
  dynamic data = jsonDecode(json);
  JumlahMenu result = JumlahMenu(
    data["hotel"],
    data["event"],
    data["wisata"],
  );

  return result;
}