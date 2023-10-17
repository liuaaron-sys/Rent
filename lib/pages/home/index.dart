import 'package:Rent/pages/home/tab_index/index.dart';
import 'package:flutter/material.dart';
import 'package:Rent/widgets/page_contents.dart';

List<Widget> tabViewList = [
  TabIndex(),
  PageContent(name: '搜索'),
  PageContent(name: '资讯'),
  PageContent(name: '我的'),
];

List<BottomNavigationBarItem> barItemList = [
  BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
  BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('搜索')),
  BottomNavigationBarItem(icon: Icon(Icons.info), title: Text('资讯')),
  BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text('我的')),
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabViewList[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: barItemList,
        currentIndex: _selectedindex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
