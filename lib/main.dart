import 'package:daryo_news_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Material());
}

class Material extends StatefulWidget {
  const Material({Key? key}) : super(key: key);

  @override
  _MaterialState createState() => _MaterialState();
}

class _MaterialState extends State<Material> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Daryo",
      home: SafeArea(
        child: HomeScreen(),
      ),
    );
  }
}
