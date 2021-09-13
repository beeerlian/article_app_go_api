import 'package:flutter/material.dart';
import 'package:bso_android_article_app/model/article.dart';


class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (int i = 0; i < dataCategory.length; i++)
            Container(
              margin: EdgeInsets.only(right: 10),
              child: InkWell(
                child: Chip(
                  shape: StadiumBorder(
                      side: BorderSide(
                    width: 2,
                    color: dataCategory[i]['isSelected']
                        ? Colors.white
                        : dataCategory[i]['color'],
                  )),
                  backgroundColor: dataCategory[i]['isSelected']
                      ? dataCategory[i]['color']
                      : Colors.transparent,
                  labelPadding:
                      EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                  label: Text(
                    dataCategory[i]['title '].toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: dataCategory[i]['isSelected']
                            ? Colors.white
                            : dataCategory[i]['color']),
                  ),
                ),
                onTap: () {
                  dataCategory[i]['isSelected'] =
                      !dataCategory[i]['isSelected'];
                  setState(() {});
                },
              ),
            )
        ],
      ),
    );
  }
}
