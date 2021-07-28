import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui show window;

/// 屏幕适配工具类
class ScreenUtils {

  static var screenSize;
  static double screenWidth;//屏幕宽度
  static double screenHeight;//屏幕高度
  static double physicalWidth;//屏幕分辨率宽度
  static double physicalHeight;//屏幕分辨率高度
  static double rpx;
  static double px;

  static void initialize({double standard = 750}){
     screenSize = ui.window.physicalSize / ui.window.devicePixelRatio;
     screenWidth = screenSize.width;
     screenHeight = screenSize.height;
     physicalWidth = ui.window.physicalSize.width;
     physicalHeight = ui.window.physicalSize.height;
     rpx = screenWidth/physicalWidth;
     px = screenWidth/physicalWidth * 2;
  }

  static double setRpx(double theRpx){
    return rpx * theRpx;
  }

  static double setPx(double thePx){
    return px * thePx *2;
  }

  static double get width {
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);
    return mediaQuery.size.width;
  }

  static double get height {
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);
    return mediaQuery.size.height;
  }

  ///状态栏高度
  static double get topSafeHeight {
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);
    return mediaQuery.padding.top;
  }

  static double get bottomSafeHeight {
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);
    return mediaQuery.padding.bottom;
  }

  static updateStatusBarStyle(SystemUiOverlayStyle style) {
    SystemChrome.setSystemUIOverlayStyle(style);
  }
}

///使用extension扩展double的功能
extension DoubleFit on double{

  double get px{
    return ScreenUtils.setPx(this);
  }

  double get rpx{
    return ScreenUtils.setRpx(this);
  }
}
