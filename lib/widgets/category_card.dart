import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(5),
      alignment: Alignment.center,
      width: 200,
      height: 110,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage(
              categoryModel.imageUrl,
            ),
            fit: BoxFit.fill,
          )),
      child: Text(
        categoryModel.categoryName,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}
