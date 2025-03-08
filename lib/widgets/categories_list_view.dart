import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/views/category_view.dart';
import 'package:news/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = [
    CategoryModel(
        imageUrl: "assets/technology.jpeg", categoryName: "Technology"),
    CategoryModel(imageUrl: "assets/general.avif", categoryName: "General"),
    CategoryModel(imageUrl: "assets/sports.avif", categoryName: "Sports"),
    CategoryModel(imageUrl: "assets/health.avif", categoryName: "Health"),
    CategoryModel(imageUrl: "assets/science.avif", categoryName: "Science"),
    CategoryModel(imageUrl: "assets/business.avif", categoryName: "Business"),
    CategoryModel(
        imageUrl: "assets/entertaiment.avif", categoryName: "Entertainment"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CategoryView(
                              category:
                                  categories[index].categoryName.toLowerCase(),
                            )));
              },
              child: CategoryCard(
                categoryModel: categories[index],
              ),
            );
          }),
    );
  }
}
