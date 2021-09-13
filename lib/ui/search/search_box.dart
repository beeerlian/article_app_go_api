import 'package:bso_android_article_app/ui/search/seacrh_delegate.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        style: TextStyle(
          fontSize: 20,
        ),
        decoration: InputDecoration(
            isDense: false,
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            filled: true,
            fillColor: Colors.black12,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.transparent),
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.transparent),
              borderRadius: BorderRadius.circular(20),
            ),
            hintText: "Search...",
            hintStyle: TextStyle(
              fontSize: 20,
            ),
            suffixIcon: Icon(
              Icons.search,
              color: Colors.black54,
            )),
        onTap: () {
          showSearch(context: context, delegate: CustomSearchDelegate(), query: searchController.text);
        },
      ),
    );
  }
}
