import 'package:daryo_news_app/models/news.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsItem extends StatefulWidget {
  NewsItem({Key? key, required this.news }) : super(key: key);
  News news;

  @override
  _NewsItemState createState() => _NewsItemState();
}

class _NewsItemState extends State<NewsItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.news.type, style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
              const Spacer(),
              Text("${widget.news.time} | ${widget.news.date} | ", style: TextStyle(color: Colors.grey),),
              const Icon(CupertinoIcons.eye, color: Colors.blue,size: 20,),
              const SizedBox(width: 4,),
              Text(widget.news.viewNumber.toString(), style: TextStyle(color: Colors.blue),),
              const SizedBox(width: 4,),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,),
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.4,
                  child: Image.network(widget.news.image),
                ),
                Expanded(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Text(widget.news.title, style: const TextStyle(fontWeight: FontWeight.w500, height: 1.4),),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
