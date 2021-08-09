
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sunstart_bright_common_flutter/core/service/UserService.dart';

///登录入口
class LoginPg extends StatelessWidget {

  TextEditingController nameController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

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
          InputInfo("账号","请输入账号",nameController),
          InputInfo("密码","请输入密码",pwdController),
          FloatingActionButton(
            child: Text("登录",
              textAlign: TextAlign.center,
              style: TextStyle(
              color: Colors.white
            ),),
              backgroundColor: Colors.blue,
              onPressed: (){
                print("账号"+nameController.text+" 密码"+pwdController.text);
                ///TODO http to go main page.
                UserService.login(nameController.text, pwdController.text).then((res){
                  if(!res.contains("error")){
                    Navigator.of(context).pushNamed("/main");
                  }
                });
              })
        ],
      ),
    );
  }
}

class InputInfo extends StatefulWidget {

  String label;
  String hintText;
  TextEditingController textEditingController;

  InputInfo(this.label,this.hintText,this.textEditingController);

  @override
  _InputInfoState createState() => _InputInfoState(this.label,this.hintText,this.textEditingController);
}

class _InputInfoState extends State<InputInfo> {

  String label;
  String hintText;
  TextEditingController textEditingController;

  _InputInfoState(this.label,this.hintText,this.textEditingController);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(label+":"),
          TextField(
            maxLines: 1,
            obscureText: label=="密码"?true:false,
            controller: textEditingController,
            decoration: InputDecoration(
              focusColor: Colors.blue,
              hintText: hintText,
              border: OutlineInputBorder(),
            ),
            onChanged: (value){
                textEditingController.text = value;
            },
          ),
        ],
      ),
    );
  }
}

