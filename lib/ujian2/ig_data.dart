import 'dart:convert';

String judulAplikasi = "Copygram";
String urlPanda = "https://asset.kompas.com/crops/ncgvDkq11ovx_624dxbv483x_iY=/0x0:648x432/750x500/data/photo/2021/10/05/615c371c61b81.jpg";

List<String> daftarNama = [
  "Panda", "Beruang", "Kijang", "Harimau", "Monyet"
];

// Map harus dicek key nya ada atau tidak (dipastikan dengan !)
Map<String, String> daftarUrlGambar = {
  daftarNama[0]: "https://asset.kompas.com/crops/ncgvDkq11ovx_624dxbv483x_iY=/0x0:648x432/750x500/data/photo/2021/10/05/615c371c61b81.jpg",
  daftarNama[1]: "https://cdn1-production-images-kly.akamaized.net/x1C5yiJK6LVmEIvUe_TgWQvFqQc=/1200x675/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3309527/original/090134200_1606535983-bear-422682_1280.jpg",
  daftarNama[2]: "https://www.kelaspintar.id/blog/wp-content/uploads/2022/04/tanduk-pada-rusa-1280x720.jpg",
  daftarNama[3]: "https://news.tamansafari.com/Newsportalv22ok/upload/26_Harimau_Sumatera_Full.jpg",
  daftarNama[4]: "https://cdn0-production-images-kly.akamaized.net/tI4P1Gim-5rjrEofIPtH77MVG4Q=/1200x900/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3611321/original/014876500_1635061240-monkey-4788331_1280.jpg",
};

String jsonStringDaftarUrlGambar = jsonEncode(daftarUrlGambar);

// encode : Map > Json String
// decode : Json String > Json

List<Map<String, String>> daftarStatus = [
  {
    "nama": daftarNama[0],
    "foto": "https://i.ytimg.com/vi/tqUFAa3DZmk/maxresdefault.jpg",
    "status": "Seekor panda sedang berfoto"
  },
  {
    "nama": daftarNama[1],
    "foto": "https://akcdn.detik.net.id/visual/2021/04/22/bertemu-pria-berkostum-beruang-berjalan-dari-los-angeles-ke-san-francisco-5_169.jpeg",
    "status": "Beruang chad terkeren di Australia"
  },
  {
    "nama": daftarNama[2],
    "foto": "https://akcdn.detik.net.id/visual/2021/04/22/bertemu-pria-berkostum-beruang-berjalan-dari-los-angeles-ke-san-francisco-5_169.jpeg",
    "status": "Foto teman ane si paling beruang"
  }
];

String jsonStringDaftarStatus = jsonEncode(daftarStatus);

Map<String, String> status = {
  "nama": "Panda",
  "foto": "https://i.ytimg.com/vi/tqUFAa3DZmk/maxresdefault.jpg",
  "status": "Prank panda di mall"
};

String jsonStringStatus = jsonEncode(status);