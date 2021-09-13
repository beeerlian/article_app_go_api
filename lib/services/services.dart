import 'dart:convert';

import 'package:bso_android_article_app/model/article_model.dart';
import 'package:bso_android_article_app/ui/home.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static Future<List<ArticleModel>> getAllArticle() async {
    final response =
        await http.get(Uri.parse("http://192.168.56.1:5000/article"));
    List<ArticleModel> articeList = [];
    var jsonData = jsonDecode(response.body);
    var jsonList = jsonData['data'];
    if (response.statusCode == 200) {

      for (final article in jsonList) {
        articeList.add(ArticleModel.fromJson(article));
      }
    }else{
      print(response.statusCode);
    }
    print(articeList);
    return articeList;
  }
}
