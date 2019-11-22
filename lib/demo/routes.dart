import 'package:flutter/material.dart';
import '../demo/guide/splash_page.dart';
import '../bottom_navigation_widget.dart';


// 配置路由
final routes = 
{
  // '/splash_page':(context,{arguments}) => LeadPage(),
  '/splash_page':(context,{arguments}) => BottomNavigationWidget(),
};


// 固定写法 
var onGenerateRoute = (RouteSettings settiings){
        // 统一处理
        final String name = settiings.name;
        final Function pageContentBuilder = routes[name];
        if (pageContentBuilder != null) {
          if (settiings.arguments != null) {
            final Route route = MaterialPageRoute(
              builder: (context)=>pageContentBuilder(context,arguments:settiings.arguments));
            return route;
          }else{
            final Route route = MaterialPageRoute(
              builder: (context)=>pageContentBuilder(context));
              return route;
          }
          
        }
      };