
import 'dart:convert';

Map<String, String> eventData = {
  "nama": "Konser Huru Hara",
  "deskripsi": "Konser artis",
  "waktu": "20 Oktober 2022"
};

String eventDataString = jsonEncode(eventData);

Map<String, String> eventData2 = {
  "nama": "Konser NOAH",
  "deskripsi": "Konser ariel",
  "waktu": "21 Oktober 2022"
};

String eventDataString2 = jsonEncode(eventData2);


List<Map<String, String>> dataTiket  = [
  {
    "nama": "Pre Sale",
    "harga": "Rp. 15.000",
  },
  {
    "nama": "Pre Sale II",
    "harga": "Rp. 30.000",
  },
  {
    "nama": "Tiket Regular",
    "harga": "Rp. 50.000",
  },
  {
    "nama": "Tiket VIP",
    "harga": "Rp. 150.000",
  },
  {
    "nama": "Tiket VIP GOLD",
    "harga": "Rp. 450.000",
  },
];

String dataTiketString = jsonEncode(dataTiket);

List<Map<String, String>> dataTiket2  = [
  {
    "nama": "NOAH Fans",
    "harga": "Rp. 15.000",
  },
  {
    "nama": "Special NOAH",
    "harga": "Rp. 50.000",
  },
  {
    "nama": "Duduk Depan",
    "harga": "Rp. 150.000",
  },
  {
    "nama": "Berdiri Seharian",
    "harga": "Rp. 450.000",
  },
];

String dataTiketString2 = jsonEncode(dataTiket2);

Map<String, String> judulUtama = {
  "nama" : "Halaman Utama",
  "last_update": "28 Oktober 2022"
};

String judulUtamaString = jsonEncode(judulUtama);

Map<String, int> jumlahMenu = {
  "hotel" : 30,
  "event" : 5,
  "wisata" : 50,
};

String jumlahMenuString = jsonEncode(jumlahMenu);