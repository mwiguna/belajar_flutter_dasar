import 'dart:convert';

class Tiket {
  late String nama, harga;

  Tiket(this.nama, this.harga);
}

List<Tiket> jsonToListTiket(String json){
  dynamic daftarTiketJson = jsonDecode(json);

  List<Tiket> daftarTiket = List<Tiket>.from(daftarTiketJson.map(
          (tiket) => Tiket(tiket["nama"], tiket["harga"])
  ));
  return daftarTiket;
}