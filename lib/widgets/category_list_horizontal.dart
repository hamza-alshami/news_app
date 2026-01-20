import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListHorizontal extends StatelessWidget {
  const CategoryListHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return CategoryCard();
        },
      ),
    );
  }
}