import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/services/news_service.dart';
import 'package:news/views/home_view.dart';

void main() {
  NewsService(dio: Dio()).getNews();
  //runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
