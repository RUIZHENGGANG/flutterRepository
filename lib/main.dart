import 'package:flutter/material.dart';
import 'package:sunstart_bright_common_flutter/core/route/Routes.dart';
import 'package:sunstart_bright_common_flutter/ui/pages/AnimationSplashPg.dart';
import 'package:sunstart_bright_common_flutter/utils/ScreenUtils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   ScreenUtils.initialize();
    return MaterialApp(
      title: '通用App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        splashColor: Colors.white60
      ),
      home: Scaffold(
        body: SplashAnimationPg(),
      ),
      onGenerateRoute: onGenerateRoute,
      initialRoute: "/",
    );
  }
}

