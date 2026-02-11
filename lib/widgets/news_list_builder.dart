import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_list.dart';

class NewsListWidgetBuilder extends StatefulWidget {
  const NewsListWidgetBuilder({
    super.key,
    required this.category,
  });

  final String category;
  @override
  State<NewsListWidgetBuilder> createState() =>
      _NewsListWidgetBuilderState();
}

class _NewsListWidgetBuilderState
    extends State<NewsListWidgetBuilder> {
  final List<NewsModel> news = const [];

  var future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsServices().getNews(
      categoryApi: widget.category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsList(
            news: snapshot.data! as List<NewsModel>,
          );
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Text("there is an error"),
          );
        } else {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CircularProgressIndicator(
                color: Colors.blue,
              ),
            ),
          );
        }
      },
    );
  }
}
