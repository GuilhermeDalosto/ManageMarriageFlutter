import 'package:flutter/material.dart';
import 'package:marriage/Model/Tabs.dart';
import 'RankingPage.dart';
import 'FeedPage.dart';
import 'TinderComponent/Game_Page.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  TabBarController createState() => new TabBarController();
}

class TabBarController extends State<MyApp> with TickerProviderStateMixin {
  final List<BarTab> _tabs = [
    new BarTab(title: "Jogo", color: Colors.teal[200]!),
    new BarTab(title: "Feed", color: Colors.deepPurple[300]!),
    new BarTab(title: "Ranking", color: Colors.blue[100]!),
  ];

  BarTab _titleHandler = new BarTab(title: "", color: Colors.white);
  late TabController _controller;

  void initState() {
    super.initState();
    _controller = new TabController(length: 3, vsync: this);
    _titleHandler = _tabs[0];
    _controller.addListener(_handleSelected);
  }

  void _handleSelected() {
    setState(() {
      _titleHandler = _tabs[_controller.index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: _titleHandler.color,
            bottom: TabBar(
              controller: _controller,
              tabs: [
                Tab(icon: Icon(Icons.info)),
                Tab(icon: Icon(Icons.feed)),                
                Tab(icon: Icon(Icons.people)),                
              ],
            ),
            title: Text(_titleHandler.title),
          ),
          body: TabBarView(
            controller: _controller,
            children: [
              GamePage(),
              InstaList(),
              RankingPage(),              
            ],
          ),
        ),
      ),
    );
  }
}
