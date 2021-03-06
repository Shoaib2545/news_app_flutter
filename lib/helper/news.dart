import 'dart:convert';

import 'package:news_app/models/article_model.dart';
import 'package:http/http.dart' as http;
class News{

  List<ArticleModel> news =[];
  
Future<void> getNews() async{
String url = 
'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=b7a6d3dd002249bd92f8f9526f222a36';
var response = await http.get(Uri.parse(url));
var jsonData = jsonDecode(response.body);

if(jsonData['status'] == "ok"){
  jsonData['articles'].forEach((element){
    if(element['urlToImage'] != null && element['description'] != null){
      ArticleModel articleModel = ArticleModel(
        title: element['title'],
        author: element['author'],
        description: element['description'],
        url: element['url'],
        urlToImage: element['urlToImage'],
        publishedAt: DateTime.parse(element['publishedAt']),
        content: element['content']
      );
      news.add(articleModel);

    }
  });
}
}

}

class CategoryNewsClass{

  List<ArticleModel> news =[];
  
Future<void> getNews(String category) async{
String url = 
'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=b7a6d3dd002249bd92f8f9526f222a36';
var response = await http.get(Uri.parse(url));
var jsonData = jsonDecode(response.body);

if(jsonData['status'] == "ok"){
  jsonData['articles'].forEach((element){
    if(element['urlToImage'] != null && element['description'] != null){
      ArticleModel articleModel = ArticleModel(
        title: element['title'],
        author: element['author'],
        description: element['description'],
        url: element['url'],
        urlToImage: element['urlToImage'],
        publishedAt: DateTime.parse(element['publishedAt']),
        content: element['content']
      );
      news.add(articleModel);

    }
  });
}
}

}
