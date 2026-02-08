import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsList extends StatelessWidget {
  const NewsList({
    super.key,
    required this.news,
  });

  final List<NewsModel> news;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((
        context,
        index,
      ) {
        return NewsTile(news: news[index]);
      }, childCount: news.length),
    );
  }
}
