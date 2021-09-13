import 'package:bso_android_article_app/model/article.dart';
import 'package:bso_android_article_app/model/article_model.dart';
import 'package:bso_android_article_app/ui/detail_page.dart';
import 'package:bso_android_article_app/ui/home.dart';
import 'package:flutter/material.dart';

class GenerateRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case "/home":
        return MaterialPageRoute(builder: (_) => Home());

      case "/detail":
        if (arguments is Article) {
          return MaterialPageRoute(
              builder: (context) => DetailArticle(article: arguments));
        }else if (arguments is ArticleModel) {
          return MaterialPageRoute(
              builder: (context) => DetailArticleModel(article: arguments));
        }
        return _errorParamsPage();

      default:
        return _errorParamsPage();
    }
  }

  static MaterialPageRoute _errorParamsPage() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              body: Center(
                child: Column(
                  children: [
                    Text("Error 404"),
                    Text("Input Argument not Correct"),
                  ],
                ),
              ),
            ));
  }
}
