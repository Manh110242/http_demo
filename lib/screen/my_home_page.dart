import 'package:flutter/material.dart';
import 'package:http_demo/screen/home_tab/tab1.dart';
import 'package:http_demo/screen/home_tab/tab2.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Demo HTTP"),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(child: Text("Dạng 1"),),
              Tab(child: Text("Dạng 2"),),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Tab1(),
            Tab2()
          ],
        ),
      ),
    );
  }
}
