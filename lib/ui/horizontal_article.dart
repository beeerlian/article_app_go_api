import 'package:bso_android_article_app/model/article_model.dart';
import 'package:bso_android_article_app/services/services.dart';
import 'package:flutter/material.dart';
import 'package:bso_android_article_app/model/article.dart';
import 'package:bso_android_article_app/ui/detail_page.dart';

class HorizontalArticle extends StatelessWidget {
  const HorizontalArticle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //ini akan berisi semua artikel horizontal
      height: 300,
      child: FutureBuilder<List<ArticleModel>>(
          future: ApiServices.getAllArticle(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }
            if (snapshot.hasError) {
              print(snapshot.error);
              return Center(
                child: Text("Error while get data from api"),
              );
            }
            if (snapshot.hasData) {
              return ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                    snapshot.data!.length,
                    (index) => GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/detail",
                                arguments: snapshot.data![index]);
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            width: 240,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.network(snapshot.data![index].postImage as dynamic),
                                Text(
                                  snapshot.data![index].postTitle as dynamic,
                                  style: TextStyle(fontSize: 20),
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                ),
                                //Author clip
                                AuthorBio(
                                  article: articleList[index],
                                  alignment: MainAxisAlignment.spaceEvenly,
                                )
                              ],
                            ),
                          ),
                        ))

                //item article satuan
                ,
              );
            }
            else{
              return Container();
            }
            
          }),
    );
  }
}

class AuthorBio extends StatelessWidget {
  var alignment;
  Article article;
  AuthorBio({Key? key, required this.article, required this.alignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignment,
      children: [
        //Avatar
        ClipRRect(
          borderRadius: BorderRadius.circular(50.0),
          child: Image.network(
            article.urlImage,
            height: 30.0,
            width: 30.0,
            fit: BoxFit.cover,
          ),
        ),
        //Data author
        Column(
          children: [
            Text(
              "BSO Android",
              style: TextStyle(fontSize: 12),
            ),
            Text(
              "12/12/2021",
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
        //Icon suka
        Row(
          children: [
            Icon(
              Icons.favorite,
              size: 15,
            ),
            Text(
              article.like.toString(),
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
      ],
    );
  }
}
