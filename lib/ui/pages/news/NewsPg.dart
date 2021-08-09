import 'package:flutter/material.dart';
import 'NewsCyffBody.dart';
import 'NewsHlmfBody.dart';
import 'NewsHmlfBody.dart';
import 'NewsQmgfBody.dart';
import 'NewsSlyfBody.dart';
import 'NewsmdffBody.dart';

/// 新闻动态的列表展示页面
class NewsPg extends StatefulWidget {
  @override
  _NewsPgState createState() => _NewsPgState();
}

class _NewsPgState extends State<NewsPg> {

  List<Widget> tabs = List();
  List<Widget> tabPgs = [NewsSlyfBody(),NewsQmgfBody(),NewsHlmfBody(),NewsHmlfBody(),NewsCyffBody(),NewsmdffBody()];
  int _selectIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          tabs: tabs,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black45,
          isScrollable: true,//是否可滚动
          onTap: (index) {
            setState(() {
              _selectIndex =index;
            });
          },
        ),
      ),
      body: tabPgs[_selectIndex],
    );
  }

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 6; i++) {
      Tab tab;
      if (i == 0) {
        tab = Tab(text: "善邻益坊");
      } else if (i == 1) {
        tab = Tab(text: "勤勉耕坊");
      } else if (i == 2) {
        tab = Tab(text: "红岭梦坊");
      } else if (i == 3) {
        tab = Tab(text: "韩墨乐坊");
      } else if (i == 4) {
        tab = Tab(text: "创意飞坊");
      } else if (i == 5) {
        tab = Tab(text: "磨豆腐坊");
      }
      tabs.add(tab);
    }
  }
}
