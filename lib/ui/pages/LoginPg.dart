
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///登录入口
class LoginPg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey,
      alignment: Alignment.center,
      child: Column(
        children: [
          Image.network("https://picsum.photos/id/237/200/300"),

        ],
      ),
    );
  }
}

class InputInfo extends StatefulWidget {

  String label;
  String hintText;

  InputInfo(this.label,this.hintText);

  @override
  _InputInfoState createState() => _InputInfoState(this.label,this.hintText);
}

class _InputInfoState extends State<InputInfo> {

  String label;
  String hintText;

  _InputInfoState(this.label,this.hintText);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

