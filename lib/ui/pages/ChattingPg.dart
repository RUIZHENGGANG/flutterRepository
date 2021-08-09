
import 'package:flutter/material.dart';

/// 机器人对话的展示页面
class ChattingsPg extends StatefulWidget {
  @override
  _ChattingsPgState createState() => _ChattingsPgState();
}

class _ChattingsPgState extends State<ChattingsPg> {

  bool visiable =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Robot-1234"),
      ),
        body:Column(
          children: [
            Expanded(
              flex: 5,
                child: ListView()
            ),
            Expanded(
                flex: 1,
                child: Row(
                  children: [
                    RaisedButton(
                        child:Text("键盘"),
                        onPressed: (){
                          visiable =!visiable;
                          setState(() {});
                    }),
                    Expanded(
                      flex: 1,
                      child: Stack(
                        children: [
                          AnimatedOpacity(
                            duration: Duration(milliseconds: 300),
                            opacity: visiable?1.0:0.0,
                            child: RaisedButton(
                              child:Text("语音"),
                              onPressed: (){},
                              onLongPress: (){
                                //TODO 弹出语音输入的动画
                              },
                            ),
                          ),
                          AnimatedOpacity(
                            duration: Duration(milliseconds: 300),
                            opacity: !visiable?1.0:0.0,
                            child: TextField(
                                decoration: InputDecoration(
                                  hintText: "请输入对话内容",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(3.0)
                                  ),
                                ),
                            ),
                          )
                        ],
                      ),
                    ),
                    RaisedButton(
                        child:Text("常见\n问题"),
                        onPressed: (){

                        }),
                  ],
                )
            )
          ],
        ),
    );


  }
}
