import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/services/news_service.dart';
import 'package:news/widgets/news_tile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  var response;
  @override
  void initState() {
    // TODO: implement initState
    // NewsService(Dio()).getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: NewsTile(),
          );
        });
  }
}
