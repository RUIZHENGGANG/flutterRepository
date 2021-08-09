
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sunstart_bright_common_flutter/ui/pages/ChattingPg.dart';
import 'package:sunstart_bright_common_flutter/ui/pages/RobotMngPg.dart';
import 'package:sunstart_bright_common_flutter/ui/pages/news/NewsPg.dart';
import 'package:sunstart_bright_common_flutter/ui/pages/orders/ServicesPg.dart';
import 'package:sunstart_bright_common_flutter/ui/widgets/DrawerLayout.dart';

///主页面入口
class MainPg extends StatefulWidget {
  @override
  _MainPgState createState() => _MainPgState();
}

class _MainPgState extends State<MainPg> {
  int _currentIndex =0;
  List<Widget> widgetPg =[NewsPg(),ChattingsPg(),ServicesPg(),RobotMngPg()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerLayout(),
      appBar: AppBar(
        title: Text("新闻动态"),
      ),
      body: widgetPg[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor:Colors.blue,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(color: Colors.white),
        unselectedIconTheme: IconThemeData(color: Colors.black54),
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            title: Text("新闻动态"),
            icon: Icon(Icons.extension)),
          BottomNavigationBarItem(
              title: Text("机器人对话"),
              icon: Icon(Icons.new_releases_sharp)),
          BottomNavigationBarItem(
              title: Text("业务查询"),
              icon: Icon(Icons.person)),
          BottomNavigationBarItem(
              title: Text("机器人管理"),
              icon: Icon(Icons.perm_contact_calendar_outlined)),
        ],
        onTap: (clickIndex){
          setState(() {
            _currentIndex = clickIndex;
          });
        },
      ),
    );
  }
}


