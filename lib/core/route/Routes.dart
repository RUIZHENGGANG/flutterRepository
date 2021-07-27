import 'package:flutter/material.dart';
// import 'package:time_line_flutter/pages/add/AddStuInfo.dart';
// import 'package:time_line_flutter/pages/login/Login.dart';
// import 'package:time_line_flutter/pages/main/MainApp.dart';
// import 'package:time_line_flutter/profiles/Routes.dart';
// import 'package:time_line_flutter/pages/register/Register.dart';
// import 'package:time_line_flutter/pages/search/SearchProject.dart';


/// 这是一个路由的配置文件
final routes = {
  // "/addStudentInfo":(context)=>AddStudentInfo(),
  // "/pages.login":(context)=>Login(),
  // "/pages.register":(context)=>Register(),
  // "/mainApp":(context)=>MainApp(),
  // "/searchPrj":(context)=>SearchProject()
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
