import 'package:dio/dio.dart';
import 'package:news/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  getNews() async {
    Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?apiKey=373e7f80575c459384856dc3022fb7cb&country=us&category=general");
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articleList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        imageUrl: article['urlToImage'],
        title: article['title'],
        subTitle: article['description'],
      );

      //to store data
      articleList.add(articleModel);
    }
    print(articleList);
  }
}
