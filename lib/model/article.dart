import 'dart:math';

import 'package:flutter/material.dart';

class Article {
  String judul;
  String datePost;
  String urlImage;
  int like;
  String body;
  bool isSaved = false;
  bool isliked = false;
  int comment = 30;

  Article(
      {required this.body,
      required this.urlImage,
      required this.judul,
      required this.datePost,
      required this.like});
}

List<Article> articleList = [
  Article(
      judul: "Imron tergelak dengar kejujuran penggemar Indonesia soal jam karet",
      body:
          "LONDON - Rumor kepergian Harry Kane dari Tottenham Hotspur kian berhembus kencang jelang penutupan bursa transfer musim panas 2021. Seperti diketahui, penyerang asal Inggris itu tengah dikaitkan dengan tim Liga Inggris lainnya yakni Manchester City.Pelatih Tottenham Hotspur, Nuno Espirito Santo , pun memberikan tanggapannya dengan situasi yang terjadi. Hingga saat ini, Nuno masih yakin Kane bakal bertahan di timnya.",
      datePost: "17/08/2021",
      like: 24000,
      urlImage:
          "https://cdn.antaranews.com/cache/800x533/2019/12/29/Screen-Shot-2019-12-29-at-00.01.55.png"),
  Article(
      judul: "IU tergelak dengar kejujuran penggemar Indonesia soal jam karet",
      body:
          "LONDON - Rumor kepergian Harry Kane dari Tottenham Hotspur kian berhembus kencang jelang penutupan bursa transfer musim panas 2021. Seperti diketahui, penyerang asal Inggris itu tengah dikaitkan dengan tim Liga Inggris lainnya yakni Manchester City.Pelatih Tottenham Hotspur, Nuno Espirito Santo , pun memberikan tanggapannya dengan situasi yang terjadi. Hingga saat ini, Nuno masih yakin Kane bakal bertahan di timnya.",
      datePost: "17/08/2021",
      like: 24000,
      urlImage:
          "https://cdn.antaranews.com/cache/800x533/2019/12/29/Screen-Shot-2019-12-29-at-00.01.55.png"),
  Article(
      judul: "IU tergelak dengar kejujuran penggemar Indonesia soal jam karet",
      body:
          "LONDON - Rumor kepergian Harry Kane dari Tottenham Hotspur kian berhembus kencang jelang penutupan bursa transfer musim panas 2021. Seperti diketahui, penyerang asal Inggris itu tengah dikaitkan dengan tim Liga Inggris lainnya yakni Manchester City.Pelatih Tottenham Hotspur, Nuno Espirito Santo , pun memberikan tanggapannya dengan situasi yang terjadi. Hingga saat ini, Nuno masih yakin Kane bakal bertahan di timnya.",
      datePost: "17/08/2021",
      like: 24000,
      urlImage:
          "https://cdn.antaranews.com/cache/800x533/2019/12/29/Screen-Shot-2019-12-29-at-00.01.55.png"),
  Article(
      judul: "IU tergelak dengar kejujuran penggemar Indonesia soal jam karet",
      body:
          "LONDON - Rumor kepergian Harry Kane dari Tottenham Hotspur kian berhembus kencang jelang penutupan bursa transfer musim panas 2021. Seperti diketahui, penyerang asal Inggris itu tengah dikaitkan dengan tim Liga Inggris lainnya yakni Manchester City.Pelatih Tottenham Hotspur, Nuno Espirito Santo , pun memberikan tanggapannya dengan situasi yang terjadi. Hingga saat ini, Nuno masih yakin Kane bakal bertahan di timnya.",
      datePost: "17/08/2021",
      like: 24000,
      urlImage:
          "https://cdn.antaranews.com/cache/800x533/2019/12/29/Screen-Shot-2019-12-29-at-00.01.55.png"),
  Article(
      judul: "IU tergelak dengar kejujuran penggemar Indonesia soal jam karet",
      body:
          "LONDON - Rumor kepergian Harry Kane dari Tottenham Hotspur kian berhembus kencang jelang penutupan bursa transfer musim panas 2021. Seperti diketahui, penyerang asal Inggris itu tengah dikaitkan dengan tim Liga Inggris lainnya yakni Manchester City.Pelatih Tottenham Hotspur, Nuno Espirito Santo , pun memberikan tanggapannya dengan situasi yang terjadi. Hingga saat ini, Nuno masih yakin Kane bakal bertahan di timnya.",
      datePost: "17/08/2021",
      like: 24000,
      urlImage:
          "https://cdn.antaranews.com/cache/800x533/2019/12/29/Screen-Shot-2019-12-29-at-00.01.55.png"),
  Article(
      judul: "IU tergelak dengar kejujuran penggemar Indonesia soal jam karet",
      body:
          "LONDON - Rumor kepergian Harry Kane dari Tottenham Hotspur kian berhembus kencang jelang penutupan bursa transfer musim panas 2021. Seperti diketahui, penyerang asal Inggris itu tengah dikaitkan dengan tim Liga Inggris lainnya yakni Manchester City.Pelatih Tottenham Hotspur, Nuno Espirito Santo , pun memberikan tanggapannya dengan situasi yang terjadi. Hingga saat ini, Nuno masih yakin Kane bakal bertahan di timnya.",
      datePost: "17/08/2021",
      like: 24000,
      urlImage:
          "https://cdn.antaranews.com/cache/800x533/2019/12/29/Screen-Shot-2019-12-29-at-00.01.55.png"),
  Article(
      judul: "IU tergelak dengar kejujuran penggemar Indonesia soal jam karet",
      body:
          "LONDON - Rumor kepergian Harry Kane dari Tottenham Hotspur kian berhembus kencang jelang penutupan bursa transfer musim panas 2021. Seperti diketahui, penyerang asal Inggris itu tengah dikaitkan dengan tim Liga Inggris lainnya yakni Manchester City.Pelatih Tottenham Hotspur, Nuno Espirito Santo , pun memberikan tanggapannya dengan situasi yang terjadi. Hingga saat ini, Nuno masih yakin Kane bakal bertahan di timnya.",
      datePost: "17/08/2021",
      like: 24000,
      urlImage:
          "https://cdn.antaranews.com/cache/800x533/2019/12/29/Screen-Shot-2019-12-29-at-00.01.55.png"),
  Article(
      judul: "IU tergelak dengar kejujuran penggemar Indonesia soal jam karet",
      body:
          "LONDON - Rumor kepergian Harry Kane dari Tottenham Hotspur kian berhembus kencang jelang penutupan bursa transfer musim panas 2021. Seperti diketahui, penyerang asal Inggris itu tengah dikaitkan dengan tim Liga Inggris lainnya yakni Manchester City.Pelatih Tottenham Hotspur, Nuno Espirito Santo , pun memberikan tanggapannya dengan situasi yang terjadi. Hingga saat ini, Nuno masih yakin Kane bakal bertahan di timnya.",
      datePost: "17/08/2021",
      like: 24000,
      urlImage:
          "https://cdn.antaranews.com/cache/800x533/2019/12/29/Screen-Shot-2019-12-29-at-00.01.55.png"),
  Article(
      judul: "IU tergelak dengar kejujuran penggemar Indonesia soal jam karet",
      body:
          "LONDON - Rumor kepergian Harry Kane dari Tottenham Hotspur kian berhembus kencang jelang penutupan bursa transfer musim panas 2021. Seperti diketahui, penyerang asal Inggris itu tengah dikaitkan dengan tim Liga Inggris lainnya yakni Manchester City.Pelatih Tottenham Hotspur, Nuno Espirito Santo , pun memberikan tanggapannya dengan situasi yang terjadi. Hingga saat ini, Nuno masih yakin Kane bakal bertahan di timnya.",
      datePost: "17/08/2021",
      like: 24000,
      urlImage:
          "https://cdn.antaranews.com/cache/800x533/2019/12/29/Screen-Shot-2019-12-29-at-00.01.55.png"),
  Article(
      judul: "IU tergelak dengar kejujuran penggemar Indonesia soal jam karet",
      body:
          "LONDON - Rumor kepergian Harry Kane dari Tottenham Hotspur kian berhembus kencang jelang penutupan bursa transfer musim panas 2021. Seperti diketahui, penyerang asal Inggris itu tengah dikaitkan dengan tim Liga Inggris lainnya yakni Manchester City.Pelatih Tottenham Hotspur, Nuno Espirito Santo , pun memberikan tanggapannya dengan situasi yang terjadi. Hingga saat ini, Nuno masih yakin Kane bakal bertahan di timnya.",
      datePost: "17/08/2021",
      like: 24000,
      urlImage:
          "https://cdn.antaranews.com/cache/800x533/2019/12/29/Screen-Shot-2019-12-29-at-00.01.55.png"),
  Article(
      judul: "IU tergelak dengar kejujuran penggemar Indonesia soal jam karet",
      body:
          "LONDON - Rumor kepergian Harry Kane dari Tottenham Hotspur kian berhembus kencang jelang penutupan bursa transfer musim panas 2021. Seperti diketahui, penyerang asal Inggris itu tengah dikaitkan dengan tim Liga Inggris lainnya yakni Manchester City.Pelatih Tottenham Hotspur, Nuno Espirito Santo , pun memberikan tanggapannya dengan situasi yang terjadi. Hingga saat ini, Nuno masih yakin Kane bakal bertahan di timnya.",
      datePost: "17/08/2021",
      like: 24000,
      urlImage:
          "https://cdn.antaranews.com/cache/800x533/2019/12/29/Screen-Shot-2019-12-29-at-00.01.55.png"),
  Article(
      judul: "IU tergelak dengar kejujuran penggemar Indonesia soal jam karet",
      body:
          "LONDON - Rumor kepergian Harry Kane dari Tottenham Hotspur kian berhembus kencang jelang penutupan bursa transfer musim panas 2021. Seperti diketahui, penyerang asal Inggris itu tengah dikaitkan dengan tim Liga Inggris lainnya yakni Manchester City.Pelatih Tottenham Hotspur, Nuno Espirito Santo , pun memberikan tanggapannya dengan situasi yang terjadi. Hingga saat ini, Nuno masih yakin Kane bakal bertahan di timnya.",
      datePost: "17/08/2021",
      like: 24000,
      urlImage:
          "https://cdn.antaranews.com/cache/800x533/2019/12/29/Screen-Shot-2019-12-29-at-00.01.55.png"),
  Article(
      judul: "IU tergelak dengar kejujuran penggemar Indonesia soal jam karet",
      body:
          "LONDON - Rumor kepergian Harry Kane dari Tottenham Hotspur kian berhembus kencang jelang penutupan bursa transfer musim panas 2021. Seperti diketahui, penyerang asal Inggris itu tengah dikaitkan dengan tim Liga Inggris lainnya yakni Manchester City.Pelatih Tottenham Hotspur, Nuno Espirito Santo , pun memberikan tanggapannya dengan situasi yang terjadi. Hingga saat ini, Nuno masih yakin Kane bakal bertahan di timnya.",
      datePost: "17/08/2021",
      like: 24000,
      urlImage:
          "https://cdn.antaranews.com/cache/800x533/2019/12/29/Screen-Shot-2019-12-29-at-00.01.55.png"),
  Article(
      judul: "IU tergelak dengar kejujuran penggemar Indonesia soal jam karet",
      body:
          "LONDON - Rumor kepergian Harry Kane dari Tottenham Hotspur kian berhembus kencang jelang penutupan bursa transfer musim panas 2021. Seperti diketahui, penyerang asal Inggris itu tengah dikaitkan dengan tim Liga Inggris lainnya yakni Manchester City.Pelatih Tottenham Hotspur, Nuno Espirito Santo , pun memberikan tanggapannya dengan situasi yang terjadi. Hingga saat ini, Nuno masih yakin Kane bakal bertahan di timnya.",
      datePost: "17/08/2021",
      like: 24000,
      urlImage:
          "https://cdn.antaranews.com/cache/800x533/2019/12/29/Screen-Shot-2019-12-29-at-00.01.55.png"),
];


Random random = Random();

///data warna tersedia
List<Color> colors = [
  Colors.red.shade900,
  Colors.yellow.shade900,
  Colors.greenAccent.shade700,
  Colors.blue.shade600
];

///Data yang dimiliki setiap tombol category
///
///{
///
///   "title" : value judul
///
///   "color" : value warna tombol
///
///   "isSelected" : value true/ false, konsidi apakah tombol dipilih/tidak
///
///}
List<Map<String, dynamic>> dataCategory = [
  {"title ": "All", "color": colors[random.nextInt(4)], "isSelected": false},
  {"title ": "Sport", "color": colors[random.nextInt(4)], "isSelected": false},
  {
    "title ": "Entertaiment",
    "color": colors[random.nextInt(4)],
    "isSelected": false
  },
  {"title ": "Movie", "color": colors[random.nextInt(4)], "isSelected": false},
  {
    "title ": "Politic",
    "color": colors[random.nextInt(4)],
    "isSelected": false
  },
  {
    "title ": "Football",
    "color": colors[random.nextInt(4)],
    "isSelected": false
  },
  {"title ": "Game", "color": colors[random.nextInt(4)], "isSelected": false},
  {
    "title ": "Technology",
    "color": colors[random.nextInt(4)],
    "isSelected": false
  },
  {"title ": "Health", "color": colors[random.nextInt(4)], "isSelected": false}
];
