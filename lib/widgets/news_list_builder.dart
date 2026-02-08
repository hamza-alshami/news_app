import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_list.dart';

class NewsListWidgetBuilder extends StatefulWidget {
  const NewsListWidgetBuilder({
    super.key,
  });

  @override
  State<NewsListWidgetBuilder> createState() => _NewsListWidgetBuilderState();
}

class _NewsListWidgetBuilderState extends State<NewsListWidgetBuilder> {
   List<NewsModel> news = const [];

  bool isLoading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    news = await NewsServices().getNews();
    isLoading = false;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CircularProgressIndicator(
                color: Colors.blue,
              ),
            ),
          )
        : NewsList(
          news: news,
        );
  }
}
