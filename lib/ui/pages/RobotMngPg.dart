import 'package:flutter/material.dart';

/// 机器人管理的展示页面
class RobotMngPg extends StatefulWidget {
  @override
  _RobotMngPgState createState() => _RobotMngPgState();
}

class _RobotMngPgState extends State<RobotMngPg> {

  String robotName;
  List<Widget> points =List();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Text("设备"),
              GestureDetector(
                child: Container(
                  child: Text("ROBOT-12345"),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(3.0))),
                ),
                onTap: (){
                  //TODO 弹出设备选择框

                },
              ),
              FlatButton(onPressed: () {}, child: Text("记录"))
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.black54,
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: Wrap(
              children: points,
            ),
          ),
        )
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    points = getPoints(robotName);
  }

  List<Widget> getPoints(String robotName){
    List<Widget> points =List();
    for (int i = 0; i < 4; i++) {
      Text text;
      if (i == 0) {
        text = Text("A");
      } else if (i == 1) {
        text = Text("B");
      } else if (i == 2) {
        text = Text("C");
      } else if (i == 3) {
        text = Text("D");
      }
      points.add(Container(
        width: 20.0,
        height: 20.0,
        child: text,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(1.0))),
      ));
    }

  }
}
