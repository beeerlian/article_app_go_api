import 'package:bso_android_article_app/model/article.dart';
import 'package:bso_android_article_app/ui/detail_page.dart';
import 'package:flutter/material.dart';

class VerticalArticleBundle extends StatefulWidget {
  int verticalArticle;
  VerticalArticleBundle({Key? key, required this.verticalArticle})
      : super(key: key);

  @override
  _VerticalArticleBundleState createState() => _VerticalArticleBundleState();
}

class _VerticalArticleBundleState extends State<VerticalArticleBundle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
      ),
      child: Column(
        children: [
          ///New article
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Article",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text("See More",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple)),
                    Container(
                      width: 10,
                    ),
                    //Icon Panah
                    Icon(
                      Icons.arrow_forward,
                      size: 30,
                      color: Colors.purple,
                    ),
                    Container(
                      width: 20,
                    ),
                  ],
                )
              ],
            ),
          ),

          ///Vertical list article
          for (int i = 0; i < widget.verticalArticle; i++)
            ///Article item
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailArticle(article: articleList[i]),
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
                          "https://cdn.antaranews.com/cache/800x533/2019/12/29/Screen-Shot-2019-12-29-at-00.01.55.png",
                          fit: BoxFit.cover,
                        )),
                    Container(
                      width: 220,
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      child: Text(
                          'Jdul Judul Jdul Judul Jdul Judul Jdul JudulJdul Judul',
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
                          children: [Icon(Icons.favorite), Text("24k")],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

          ///show more button
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Show more..",
                  style: TextStyle(fontSize: 20),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  size: 50,
                )
              ],
            ),
            onTap: () {
              widget.verticalArticle += 3;
              setState(() {});
            },
          )
        ],
      ),
    );
  }
}
