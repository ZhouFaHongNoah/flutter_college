import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'pages/my.dart';
import 'pages/tag_group.dart';

class BottomNavigationWidget extends StatefulWidget {
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _bottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState() {
    list..add(Home())..add(TagGroup())..add(MyPage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: _bottomNavigationColor,
                ),
                title: Text('首页',
                    style: TextStyle(color: _bottomNavigationColor))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.group,
                  color: _bottomNavigationColor,
                ),
                title: Text('小组',
                    style: TextStyle(color: _bottomNavigationColor))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: _bottomNavigationColor,
                ),
                title: Text('我的',
                    style: TextStyle(color: _bottomNavigationColor))),
          ],
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed),
    );
  }
}
