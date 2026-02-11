import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category1});
  final String category1;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 15,
            ),
            sliver: NewsListWidgetBuilder(category: category1),
          ),
        ],
      ),
    );
  }
}
