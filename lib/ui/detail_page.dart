import 'package:bso_android_article_app/model/article_model.dart';
import 'package:flutter/material.dart';
import 'package:bso_android_article_app/model/article.dart';
import 'package:bso_android_article_app/ui/horizontal_article.dart';

class DetailArticle extends StatefulWidget {
  Article article;
  bool isSaved = false;
  bool readMode = false;
  DetailArticle({Key? key, required this.article}) : super(key: key);

  @override
  _DetailArticleState createState() => _DetailArticleState();
}

class _DetailArticleState extends State<DetailArticle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor:
            widget.readMode ? Colors.amber.withOpacity(0.1) : Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                widget.isSaved = !widget.isSaved;
              });
            },
            icon: Icon(
              widget.isSaved ? Icons.bookmark_add : Icons.bookmark_add_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Image.network(widget.article.urlImage),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Column(
                  children: [
                    Text(
                      widget.article.judul,
                      style: TextStyle(fontSize: 22),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AuthorBio(
                      article: widget.article,
                      alignment: MainAxisAlignment.spaceBetween,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      widget.article.body,
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            color: widget.readMode
                ? Colors.amber.withOpacity(0.1)
                : Colors.transparent,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: widget.readMode ? Colors.amber.withOpacity(0.1) : Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    widget.article.isliked = !widget.article.isliked;
                    widget.article.isliked
                        ? widget.article.like++
                        : widget.article.like--;
                  });
                },
                icon: Icon(widget.article.isliked
                    ? Icons.favorite
                    : Icons.favorite_border_outlined)),
            Stack(
              children: [
                IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) => commentBottomSheet());
                    },
                    icon: Icon(Icons.message_outlined)),
                CircleAvatar(
                  backgroundColor: Colors.red.shade600,
                  child: Text(
                    widget.article.comment.toString(),
                    style: TextStyle(fontSize: 8),
                  ),
                  radius: 8,
                )
              ],
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    widget.readMode = !widget.readMode;
                  });
                },
                icon: Icon(widget.readMode
                    ? Icons.visibility_outlined
                    : Icons.visibility_off)),
            IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => shareBottomSheet());
                },
                icon: Icon(Icons.share)),
          ],
        ),
      ),
    );
  }

  Widget shareBottomSheet() {
    var color = widget.readMode ? Colors.amber.withOpacity(0.1) : Colors.white;
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: color,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Share',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: shareIconListData
            .map((e) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      e['icon'],
                      size: 50,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(e['label'])
                  ],
                ))
            .toList(),
      ),
    );
  }

  Widget commentBottomSheet() {
    var color = widget.readMode ? Colors.amber.withOpacity(0.1) : Colors.white;
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: color,
        title: Text(
          "Comment",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          for (int i = 0; i < widget.article.comment; i++)
            ListTile(title: Text("Comment $i")),
        ],
      ),
    );
  }
}

class DetailArticleModel extends StatefulWidget {
  ArticleModel article;
  bool isSaved = false;
  bool readMode = false;
  DetailArticleModel({Key? key, required this.article}) : super(key: key);

  @override
  _DetailArticleModelState createState() => _DetailArticleModelState();
}

class _DetailArticleModelState extends State<DetailArticleModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor:
            widget.readMode ? Colors.amber.withOpacity(0.1) : Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                widget.isSaved = !widget.isSaved;
              });
            },
            icon: Icon(
              widget.isSaved ? Icons.bookmark_add : Icons.bookmark_add_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Image.network(widget.article.postImage as dynamic),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Column(
                  children: [
                    Text(
                      widget.article.postTitle as dynamic,
                      style: TextStyle(fontSize: 22),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AuthorBio(
                      article: articleList[0],
                      alignment: MainAxisAlignment.spaceBetween,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      widget.article.postDetails as dynamic,
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            color: widget.readMode
                ? Colors.amber.withOpacity(0.1)
                : Colors.transparent,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: widget.readMode ? Colors.amber.withOpacity(0.1) : Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    articleList[0].isliked = !articleList[0].isliked;
                    articleList[0].isliked
                        ? articleList[0].like++
                        : articleList[0].like--;
                  });
                },
                icon: Icon(articleList[0].isliked
                    ? Icons.favorite
                    : Icons.favorite_border_outlined)),
            Stack(
              children: [
                IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) => commentBottomSheet());
                    },
                    icon: Icon(Icons.message_outlined)),
                CircleAvatar(
                  backgroundColor: Colors.red.shade600,
                  child: Text(
                    articleList[0].comment.toString(),
                    style: TextStyle(fontSize: 8),
                  ),
                  radius: 8,
                )
              ],
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    widget.readMode = !widget.readMode;
                  });
                },
                icon: Icon(widget.readMode
                    ? Icons.visibility_outlined
                    : Icons.visibility_off)),
            IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => shareBottomSheet());
                },
                icon: Icon(Icons.share)),
          ],
        ),
      ),
    );
  }

  Widget shareBottomSheet() {
    var color = widget.readMode ? Colors.amber.withOpacity(0.1) : Colors.white;
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: color,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Share',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: shareIconListData
            .map((e) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      e['icon'],
                      size: 50,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(e['label'])
                  ],
                ))
            .toList(),
      ),
    );
  }

  Widget commentBottomSheet() {
    var color = widget.readMode ? Colors.amber.withOpacity(0.1) : Colors.white;
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: color,
        title: Text(
          "Comment",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          for (int i = 0; i < articleList[0].comment; i++)
            ListTile(title: Text("Comment $i")),
        ],
      ),
    );
  }
}


Map<String, dynamic> shareIconListMap = {
  "icon": Icons.whatshot,
  "label": "WhatsApp"
};

List<Map<String, dynamic>> shareIconListData = [
  for (int i = 0; i < 9; i++) shareIconListMap
];
