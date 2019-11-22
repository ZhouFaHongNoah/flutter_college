import 'package:flutter/material.dart';
import 'animation_btn.dart';

//带有动画按钮的页面
class AnimationPage extends StatefulWidget{

//设置一个标题
  AnimationBtn btn = new AnimationBtn(Title: '开启新版');


  @override
  _AnimationPageState createState() => new _AnimationPageState();
}
class _AnimationPageState extends State<AnimationPage>{
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    //层叠
    return new Stack(
    //中心对齐
      alignment: Alignment.center,
      children: <Widget>[
        new Center(
          child:   new Image(image: new AssetImage('images/guidepage_04.jpg')),
        ), 
        Positioned(
       //设置一个位置,距离底部60
          bottom: 60,
          child: widget.btn
       )
      ],
    );
  }
}
