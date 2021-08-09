import 'package:flutter/material.dart';
import 'package:flutter_fai_webview/flutter_fai_webview.dart';

/// 新闻动态的红岭梦坊展示页面
class NewsHlmfBody extends StatefulWidget {
  @override
  _NewsHlmfBodyState createState() => _NewsHlmfBodyState();
}

class _NewsHlmfBodyState extends State<NewsHlmfBody> {

  String message;

  @override
  Widget build(BuildContext context) {
    return FaiWebViewWidget(
        url: "https://www.sina.com.cn",
        callback: callback,
        isLog:true
    );
  }

  @override
  void initState() {
    super.initState();
  }

  ///加载 Html 的回调
  ///[code]消息类型标识
  ///[msg] 消息内容
  ///[content] 回传的参数
  void callback(int code, String msg, dynamic content){
//加载页面完成后 对页面重新测量的回调
    //这里没有使用到
    //当FaiWebViewWidget 被嵌套在可滑动的 widget 中，必须设置 FaiWebViewWidget 的高度
    //设置 FaiWebViewWidget 的高度 可通过在 FaiWebViewWidget 嵌套一层 Container 或者 SizeBox
    if (code == 201) {
      //加载页面完成后 对页面重新测量的回调
      //这里没有使用到
      //当FaiWebViewWidget 被嵌套在可滑动的 widget 中，必须设置 FaiWebViewWidget 的高度
      //设置 FaiWebViewWidget 的高度 可通过在 FaiWebViewWidget 嵌套一层 Container 或者 SizeBox
      //页面加载完成后 测量的 WebView 高度
      double webViewHeight = content;
      print("webViewHeight " + webViewHeight.toString());
      webViewHeight = content;
    } else if (code == 202) {
      // Html 页面中 Js 的回调
      // Html 页面中的开发需要使用 Js 调用  【 Android 中 使用 controll.otherJsMethodCall( json )】 【iOS中 直接调用 otherJsMethodCall( json ) 】
      // 在 Flutter 中解析 json 然后加载不同的功能
      String jsJson = content;
    } else if (code == 203) {
      // 为 Html 页面中的图片添加 点击事件后，点击图片会回调此方法
      // content 为当前点击图片的 地址
      // 实现更多功能 比如 一个 Html 页面中 有5张图片，点击放大查看并可右右滑动
      // 这个功能可以在 imageCallBack 回调中处理
    } else if (code == 301) {
      //当 WebView 滑动到顶部的回调
    } else if (code == 302) {
      //当 WebView 开始向下滑动时的回调
    } else if (code == 303) {
      //当 WebView 开始向上滑动时的回调
    } else if (code == 304) {
      //当 WebView 滑动到底部的回调
    } else if (code == 401) {
      //当 WebView 开始加载的回调
    } else if (code == 402) {
      //当 WebView 加载完成的回调
    } else if (code == 403) {
      // WebView 中 Html中日志输出回调
    } else if (code == 401) {
      // WebView 加载 Html 页面出错的回调
    } else if (code == 501) {
      // 当 Html 页面中有 Alert 弹框弹出时 回调消息
    } else if (code == 1000) {
      // 操作失败 例如 空指针异常 等等
    } else {
      //其他回调
    }
    setState(() {
      message = "回调：code[" + code.toString() + "]; msg[" + msg.toString() + "]";
    });
  }
}