import 'package:flutter/material.dart';
import 'package:flutter_app/pages/tabs/Tab.dart';
import 'package:flutter_app/pages/Search.dart';
// 配置路由
final routes = {
  '/' : (context) => Tabs(),
  '/search': (context) => SearchPage(),
};
// 固定写法
// ignore: missing_return, top_level_function_literal_block
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pagesContentBuilder = routes[name];
  if (pagesContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder:  (context) =>
            pagesContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route = MaterialPageRoute(builder: (context) => pagesContentBuilder(context));
      return route;
    }
  }
};