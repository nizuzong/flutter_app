import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索页面'),
      ),
      body: Text('林深时见鹿，海蓝时见鲸，梦醒时见你'),
    );
  }
}