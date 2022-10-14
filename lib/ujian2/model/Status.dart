
import 'dart:convert';

class Status {
  late String nama;
  late String foto;
  late String status;

  Status(this.nama, this.foto, this.status);

  String sapaNama(){
    return "Hai! " + nama;
  }
}

Status jsonObjectStatus(String jsonString){
  dynamic data = jsonDecode(jsonString);

  return Status(
      data["nama"],
      data["foto"],
      data["status"]
  );
}

