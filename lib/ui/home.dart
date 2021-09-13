import 'package:bso_android_article_app/model/article_model.dart';
import 'package:bso_android_article_app/services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bso_android_article_app/ui/category_list.dart';
import 'package:bso_android_article_app/ui/search/search_box.dart';
import 'package:bso_android_article_app/ui/vertical_article.dart';

import 'horizontal_article.dart';



class Home extends StatefulWidget {
  int verticalArticle = 3;
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ini app bar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Explore",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        actions: [
          IconButton(
              onPressed: () {
                showMenu(
                    context: context,
                    position: RelativeRect.fromLTRB(50, 0, 0, 100),
                    items: menuiItems);
              },
              icon: Icon(
                Icons.menu,
                color: Colors.black,
                size: 35,
              ))
        ],
      ),
      body: ListView(
        children: [
          //ini serach box
          SearchBox(),
          //ini category
          CategoryList(),
          ///Most popular text
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Most Popular",
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 5,
          ),
          ///Horizontal list artikel
          HorizontalArticle(),
          //Vertical Article Bundle
          VerticalArticleBundle(verticalArticle: widget.verticalArticle),
        ],
      ),
    );
  }
}

List<PopupMenuItem> menuiItems = [
  PopupMenuItem(
    child: ListTile(
      title: Container(
        width: 400,
        child: Text('Login to write your article now!'),
      ),
      trailing: Icon(Icons.login),
    ),
  )
];
