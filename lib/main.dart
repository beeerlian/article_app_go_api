
import 'package:bso_android_article_app/navigation/generate_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bso_android_article_app/ui/detail_page.dart';
import 'package:bso_android_article_app/ui/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/home",
      onGenerateRoute : (settings){
        return GenerateRoute.generateRoute(settings);
      }
    );
  }
}
