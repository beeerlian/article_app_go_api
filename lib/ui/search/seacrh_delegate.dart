import 'package:bso_android_article_app/model/article.dart';
import 'package:bso_android_article_app/ui/detail_page.dart';
import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(onPressed: () {}, icon: Icon(Icons.clear_all))];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<Article> result = searchArticle();
    return ListView(
      children: result
          .map(
            (e) => InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailArticle(article: e),
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 120,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 120,
                        height: 120,
                        child: Image.network(
                          e.urlImage,
                          fit: BoxFit.cover,
                        )),
                    Container(
                      width: 220,
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      child: Text(
                          e.judul,
                          style: TextStyle(
                            fontSize: 19,
                          )),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 90,
                        ),
                        Row(
                          children: [Icon(Icons.favorite), Text(e.like.toString())],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }

  List<Article> searchArticle() {
    List<Article> resultQuery = [];
    RegExp exp = RegExp("\\b" + query.toLowerCase() + "\\b",caseSensitive: false);
    for (Article article in articleList) {
      if (exp.hasMatch(article.judul.toString().toLowerCase())== true) resultQuery.add(article);
      else if (exp.hasMatch(article.datePost.toString().toLowerCase())== true) resultQuery.add(article);
      else if (exp.hasMatch(article.body.toString().toLowerCase()) == true) resultQuery.add(article);
    }

    // debugPrint("Query : $query = ${articleList[0].judul} \n hasil : ${exp.hasMatch(articleList[0].judul).toString()}");

    return resultQuery;
  }
}


