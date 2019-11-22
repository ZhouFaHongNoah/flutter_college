import 'package:flutter/material.dart';
import 'animation_page.dart';
import 'package:app_flutter_college/bottom_navigation_widget.dart';

//引导页
class LeadPage extends StatefulWidget{

  @override
  _LeadPageState createState() => new _LeadPageState();

}
class _LeadPageState extends State<LeadPage>{

//引出带动画的widget
  AnimationPage aniPage = new AnimationPage();
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //层叠布局
    return new Stack(alignment: Alignment.center,
      children: <Widget>[
      //背景
       new Image(image:new AssetImage('images/guidepage_bg.png')),
       //添加一个pageview
        new PageView(
        //设置为水平滚动 并添加素材
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            new Image(image: new AssetImage('images/guidepage_01.jpg')),
            new Image(image: new AssetImage('images/guidepage_02.jpg')),
            new Image(image: new AssetImage('images/guidepage_03.jpg')),
            aniPage,
          ],
          //翻页事件
          onPageChanged:startPagePaged,
        )
      ],
    );
  }
  void startPagePaged(int page){

    if (page == 3 ){
    //当到达带按钮的页面时触发动画
      aniPage.btn.startAnimation();
    }

  }

}
