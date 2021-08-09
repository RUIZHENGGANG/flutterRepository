import 'package:flutter/material.dart';
import 'package:sunstart_bright_common_flutter/ui/pages/AnimationSplashPg.dart';
import 'package:sunstart_bright_common_flutter/ui/pages/LoginPg.dart';
import 'package:sunstart_bright_common_flutter/ui/pages/MainPg.dart';


/// 这是一个路由的配置文件
final routes = {
  "/":(context)=>SplashAnimationPg(),
  "/login":(context)=>LoginPg(),
  "/main":(context)=>MainPg(),
};

// ignore: missing_return, top_level_function_literal_block
var onGenerateRoute = (RouteSettings routeSettings){
  // 统一处理
  final String name = routeSettings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (routeSettings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: routeSettings.arguments));
      return route;
    }else{
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context));
      return route;
    }
  }

};
