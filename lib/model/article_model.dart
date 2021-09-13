// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

ArticleModel welcomeFromJson(String str) => ArticleModel.fromJson(json.decode(str));

String welcomeToJson(ArticleModel data) => json.encode(data.toJson());

class ArticleModel {
    ArticleModel({
        this.id,
        this.categoryName,
        this.postTitle,
        this.postDetails,
        this.postImage,
    });

    int? id;
    String? categoryName;
    String? postTitle;
    String? postDetails;
    String? postImage;

    factory ArticleModel.fromJson(Map<String, dynamic> json) => ArticleModel(
        id: json["id"],
        categoryName: json["CategoryName"],
        postTitle: json["PostTitle"],
        postDetails: json["PostDetails"],
        postImage: json["PostImage"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "CategoryName": categoryName,
        "PostTitle": postTitle,
        "PostDetails": postDetails,
        "PostImage": postImage,
    };
}
