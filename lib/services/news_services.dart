// api key : 881acceee1894b329540e5e0711c8ea3

import 'package:dio/dio.dart';
import 'package:news_app/models/news_model.dart';

class NewsServices {
  final dio = Dio();

  Future<List<NewsModel>> getNews({required String categoryApi}) async {
    return await Future.delayed(Duration(seconds: 3), () async {
      try {
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=881acceee1894b329540e5e0711c8ea3&category=$categoryApi',
      );
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<NewsModel> articlesList = [];
      for (var article in articles) {
        NewsModel newsModel = NewsModel(
          title: article['title'] ?? '',
          news: article['content'] ?? '',
          img: article['urlToImage'] ?? '',
        );
        articlesList.add(newsModel);
      }
      
      return articlesList;
      } catch(e){
        return[];
      }
    });
  }
}
