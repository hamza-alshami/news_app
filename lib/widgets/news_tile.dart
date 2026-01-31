import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.news});

  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: news.img.isNotEmpty
              ? Image.network(news.img, fit: BoxFit.cover)
              : Image.asset(
                  "assets/no_img.png",
                  height: 150,
                  width: 150,
                ),
        ),
        Text(
          news.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text(
          news.news,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
          ),
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(thickness: 1),
        ),
      ],
    );
  }
}
