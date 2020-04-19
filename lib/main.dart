import 'package:flutter/material.dart';
import 'package:flutter_music/pages/recommend_page.dart';
import 'package:flutter_music/pages/rank_page.dart';
import 'package:flutter_music/pages/search_page.dart';

void main() {
  runApp(new FlutterMusic());
}

class FlutterMusic extends StatefulWidget {
  @override
  _FlutterMusicState createState() => _FlutterMusicState();
}

class _FlutterMusicState extends State<FlutterMusic> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new DefaultTabController(
        length: choices.length,
        child: new Scaffold(
          appBar: new AppBar(
            backgroundColor: new Color(0xffd43c33),
            title: const Text('Flutter Music'),
            bottom: new TabBar(
              indicatorSize: TabBarIndicatorSize.label, //指示器大小的计算方式，TabBarIndicatorSize.tab：跟每个tab等宽，TabBarIndicatorSize.label：跟文字等宽
              indicatorColor: new Color(0xffd43c33),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              labelStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              unselectedLabelStyle: new TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              tabs: choices.map((Choice choice) {
                return new Tab(
                  text: choice.title,
                );
              }).toList(),
            ),
          ),
          body: new TabBarView(
            children: <Widget>[RecommendPage(), RankPage(), SearchPage()],
          ),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({this.title});
  final String title;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: '推荐音乐'),
  const Choice(title: '热歌榜'),
  const Choice(title: '搜索'),
];
