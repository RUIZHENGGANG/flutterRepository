
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///侧边栏页面
class DrawerLayout extends StatefulWidget {
  @override
  _DrawerLayoutState createState() => _DrawerLayoutState();
}

class _DrawerLayoutState extends State<DrawerLayout> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        UserInfoTitle(),
        Text("浏览记录",style: TextStyle(color: Colors.black,fontSize: 18),),
        Container(child: Text("这里的浏览记录暂时不添加记录！",),),
        Text("字体大小",style: TextStyle(color: Colors.black,fontSize: 18)),
        Row(children: fontSizeButtons()),
        FloatingActionButton(
          child: Text("退出登录"),
          onPressed: (){
            print("这里可以弹退出登录的窗口");
        },
        )
      ],
    );
  }

  ///设置字体大小的布局
  List<Widget> fontSizeButtons(){
    List<Widget>  fsButtons = new List();
    for(int i=0;i<3;i++){
      Text text;
      if(i==0){
        text = Text("小号字体",style: TextStyle(color: Colors.black,fontSize: 14));
      }else if(i==1){
        text = Text("中号字体",style: TextStyle(color: Colors.black,fontSize: 18));
      }else if(i==2){
        text = Text("大号字体",style: TextStyle(color: Colors.black,fontSize: 22));
      }

      fsButtons.add(Expanded(
        flex: 1,
        child: GestureDetector(
          child: Container(
              child: text,
              decoration:BoxDecoration(
                  border: Border.all(
                      color:Colors.black,
                      width: 2
                  ),
                  borderRadius:BorderRadius.all(Radius.circular(3.0))
              ),
          ),
          onTap: (){
            //TODO
            if(text.data=="小号字体"){

            }else if(text.data=="中号字体"){

            }else if(text.data=="大号字体"){

            }
          },
        ),
      ));
    }

    return fsButtons;
  }
}

///侧边栏页面展示的用户信息
class UserInfoTitle extends StatefulWidget {
  @override
  _UserInfoTitleState createState() => _UserInfoTitleState();
}

class _UserInfoTitleState extends State<UserInfoTitle> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network("http://"),
        Text("ChrisRui",style: TextStyle(fontSize: 18,color: Colors.black)),
        Container(
          child: Text("已登录",style: TextStyle(fontSize: 13),),
          decoration:BoxDecoration(
              border: Border.all(
                  color:Colors.black,
                  width: 2
              ),
              borderRadius:BorderRadius.all(Radius.circular(3.0))
          ),
        )
      ],
    );
  }
}


