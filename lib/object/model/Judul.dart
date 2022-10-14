import 'dart:convert';

class Judul {
  late String nama, last_update; //property = variabel didalam class

  Judul(this.nama, this.last_update);
}

Judul jsonToJudul(String json){
  dynamic data = jsonDecode(json);
  Judul result = Judul(
    data["nama"],
    data["last_update"],
  );

  return result;
}