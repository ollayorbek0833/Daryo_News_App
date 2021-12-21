import 'package:daryo_news_app/lists/news_type_list.dart';
import 'package:daryo_news_app/screens/home/home_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLotin = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: buildAppBar(),
        drawer: buildDrawer(),
        body: const TabBarView(
          children: [
            Tabs(),
            Tabs(),
            Tabs(),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(isLotin ? "Daryo" : "Дарё"),
      bottom: TabBar(
        isScrollable:true,
        tabs: [
          Tab(child: Text(isLotin?"So'nggi yangiliklar":"Сўнгги янгиликлар"),),
          Tab(child: Text(isLotin?"Asosiy yangiliklar":"Асосий янгиликлар"),),
          Tab(child: Text(isLotin?"Ko'p o'qilgan yangiliklar":"Энг кўп ўқилган янгиликлар"),),
        ],
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.all(10),
          child: Icon(Icons.search),
        )
      ],
    );
  }

  Drawer buildDrawer() {
    return Drawer(
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Text(
                        isLotin ? "Daryo" : "Дарё",
                        style: const TextStyle(color: Colors.white),
                        textScaleFactor: 2.3,
                      ),
                    ),
                    OutlinedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                isLotin ? Colors.white : Colors.transparent)),
                        onPressed: () {
                          if (isLotin == true) {
                            setState(() {
                              isLotin = false;
                            });
                          } else if (isLotin == false) {
                            setState(() {
                              isLotin = true;
                            });
                          }
                        },
                        child: Text("Lotincha",
                            style: TextStyle(
                                color:
                                    (isLotin ? Colors.blue : Colors.white)))),
                    OutlinedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              isLotin ? Colors.transparent : Colors.white)),
                      onPressed: () {
                        if (isLotin == true) {
                          setState(() {
                            isLotin = false;
                          });
                        } else if (isLotin == false) {
                          setState(() {
                            isLotin = true;
                          });
                        }
                      },
                      child: Text("Кирилча",
                          style: TextStyle(
                              color: (isLotin ? Colors.white : Colors.blue))),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          isLotin ? "Toshkent" : "Тошкент",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18),
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: const [
                          Icon(
                            Icons.cloud,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "+12.0",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Text(
                  "_______________________________________________",
                  style: TextStyle(color: Colors.white),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(
                            CupertinoIcons.money_dollar_circle,
                            color: Colors.white,
                          ),
                          Text(
                            "10769.78",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(
                            CupertinoIcons.money_euro_circle,
                            color: Colors.white,
                          ),
                          Text(
                            "12166.62",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.cabin_sharp,
                            color: Colors.white,
                          ),
                          Text(
                            "12166.62",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            color: Colors.blue,
            height: MediaQuery.of(context).size.height * 0.22,
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width*0.77,
              color: Colors.yellow[200],
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    isLotin
                        ? "Qo'llanma ekranini ko'rsatish"
                        : "Қўлланма экранини кўрсатиш",
                  ))),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black12,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      isLotin ? "So'nggi yangiliklar" : "Сўнгги янгиликлар",
                      style: const TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(isLotin ? "Mahalliy" : "Махаллий"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(isLotin ? "Dunyo" : "Дунё"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(isLotin ? "Texnologiyalar" : "Технология"),
              )
            ],
          ), //So'nggi yangiliklar,
          Container(
            color: Colors.black12,
            width: 800,
            height: MediaQuery.of(context).size.height * 0.003,
          ), //Chiziq
          Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
              color: Colors.white70,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  isLotin ? "Tanlangan xabarlar" : "Сўнгги янгиликлар",
                  style: const TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
              )),
          Container(
            color: Colors.black12,
            width: 800,
            height: MediaQuery.of(context).size.height * 0.003,
          ), //Chiziq
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(8.0),
                child: Text(isLotin ? "Madaniyat" : "Маданият"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(isLotin ? "Avto" : "Авто"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(isLotin ? "Sport" : "Спорт"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(isLotin ? "Foto" : "Фото"),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("LifeStyle"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(isLotin ? "Kolumnistlar" : "Колумнистлар"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(isLotin ? "Arxiv" : "Архив"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}