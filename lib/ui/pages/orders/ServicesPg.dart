import 'package:flutter/material.dart';

import 'ServicesItemBody.dart';

/// 业务查询的列表展示页面
class ServicesPg extends StatefulWidget {
  @override
  _ServicesPgState createState() => _ServicesPgState();
}

class _ServicesPgState extends State<ServicesPg> {
  List<Widget> tabs = List();
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
      body: ServicesItemBody(_selectIndex),
    );
  }

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 6; i++) {
      Tab tab;
      if (i == 0) {
        tab = Tab(text: "出生及婴儿");
      } else if (i == 1) {
        tab = Tab(text: "教育入学");
      } else if (i == 2) {
        tab = Tab(text: "就业创业");
      } else if (i == 3) {
        tab = Tab(text: "住房类");
      } else if (i == 4) {
        tab = Tab(text: "结婚出生");
      } else if (i == 5) {
        tab = Tab(text: "退休养老");
      }
      tabs.add(tab);
    }
  }
}