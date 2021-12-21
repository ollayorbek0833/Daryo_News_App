import 'package:daryo_news_app/models/news.dart';
import 'package:daryo_news_app/screens/home/news_item.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: News.myNews.length,
      itemBuilder: (BuildContext context, int index) => Container(
        child: Card(child: NewsItem(news: News.myNews[index])),
      ),
    );
  }
}
