import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_list_horizontal.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          text: TextSpan(
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

      body: CategoryListHorizontal(),
    );
  }
}


