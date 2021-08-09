import 'package:flutter/material.dart';

///动画写法2
class SplashAnimationPg extends StatefulWidget {
  @override
  _SplashAnimationPgState createState() => _SplashAnimationPgState();
}

class _SplashAnimationPgState extends State<SplashAnimationPg> with SingleTickerProviderStateMixin{
  
  AnimationController animationController;
  CurvedAnimation curvedAnimation;
  Tween tween;
  
  // @override
  // Widget build(BuildContext context) {
  //   return Center(
  //     child: SplashAnim(curvedAnimation),
  //   );
    ///写法3
    @override
    Widget build(BuildContext context) {
      return Center(
        child: AnimatedBuilder(
            animation:curvedAnimation,
          builder: (context,child){
              return Icon(Icons.favorite,size: curvedAnimation.value,color: Colors.blue);
          },
        ),
      );
  }

  @override
  void initState() {
    super.initState();
    //1.设置动画控制器
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 3),lowerBound: 50,upperBound: 150);
    //2.设置动画执行速率曲线
    curvedAnimation=CurvedAnimation(parent: animationController, curve: Curves.bounceInOut);
    //3.设置动画value执行范围
    tween = Tween(begin: 50.0,end:150.0);
    tween.animate(curvedAnimation);
    curvedAnimation.addStatusListener((status) {
      if(status==AnimationStatus.dismissed){
        animationController.forward();
      }else if(status == AnimationStatus.completed){
        animationController.reverse();
        Navigator.of(context).pushNamed("/login");
      }
    });
    animationController.forward();
  }
}

class SplashAnim extends AnimatedWidget{

  Animation animation;//核心动画类

  SplashAnim(Animation animation):super(listenable:animation); //动画控制器

  @override
  Widget build(BuildContext context) {
    animation = listenable;
    return Icon(Icons.favorite,size: animation.value,color: Colors.red);
  }
}


///动画写法1
/*class SplashAnimationPg extends StatefulWidget{

  @override
  _SplashAnimState createState() => _SplashAnimState();
}

class _SplashAnimState extends State<SplashAnimationPg> with SingleTickerProviderStateMixin{

   AnimationController animationController;
   CurvedAnimation curvedAnimation;
   Tween tween;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(Icons.favorite,size: curvedAnimation.value,color: Colors.red),
    );
  }

  @override
  void initState() {
    super.initState();
    //1.设置动画控制器
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 3),lowerBound: 50,upperBound: 150);
    //2.设置动画执行速率曲线
    curvedAnimation=CurvedAnimation(parent: animationController, curve: Curves.bounceInOut);
    //3.设置动画value执行范围
    tween = Tween(begin: 50.0,end:150.0);
    tween.animate(curvedAnimation);
    curvedAnimation.addListener(() { 
      
    });
    curvedAnimation.addStatusListener((status) {
      if(status==AnimationStatus.dismissed){
        animationController.forward();
      }else if(status == AnimationStatus.completed){
        animationController.reverse();
      }
    });
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
}*/



