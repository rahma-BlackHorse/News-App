import 'package:flutter/material.dart';
import 'package:news/widgets/categories_list_view.dart';
import 'package:news/widgets/category_card.dart';
import 'package:news/widgets/news_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "News",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                "Cloud",
                style:
                    TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
              )
            ],
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [CategoriesListView(), Expanded(child: NewsListView())],
        ));
  }
}
