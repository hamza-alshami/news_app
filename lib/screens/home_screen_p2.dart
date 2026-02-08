import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_list_horizontal.dart';
import 'package:news_app/widgets/news_list_builder.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            centerTitle: true,
            title: RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: "News",
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: "Cloud",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: CategoryListHorizontal(),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(15),
            sliver: NewsListWidgetBuilder(),
          ),
        ],
      ),
    );
  }
}

