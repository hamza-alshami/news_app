import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListHorizontal extends StatelessWidget {
  const CategoryListHorizontal({super.key});

  static final List<CategoryModel> category =const [
    CategoryModel(
      img: "assets/business.avif",
      name: "Business",
    ),
    CategoryModel(
      img: "assets/entertaiment.avif",
      name: "Entertainment",
    ),
    CategoryModel(
      img: "assets/general.avif",
      name: "General",
    ),
    CategoryModel(
      img: "assets/health.avif",
      name: "HEalth",
    ),
    CategoryModel(
      img: "assets/science.avif",
      name: "Science",
    ),
    CategoryModel(
      img: "assets/sports.avif",
      name: "Sports",
    ),
    CategoryModel(
      img: "assets/technology.jpeg",
      name: "Technology",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: category[index]);
        },
      ),
    );
  }
}
