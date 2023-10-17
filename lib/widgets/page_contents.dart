import 'package:flutter/material.dart';

import '../routes.dart';

class PageContent extends StatelessWidget {
  final String name;

  const PageContent({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('当前页面: $name'),
        ),
        body: ListView(
          children: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.home);
                },
                child: Text(Routes.home)),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.login);
                },
                child: Text(Routes.login)),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/aadfadf');
                },
                child: Text("不存在的页面")),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/room/222');
                },
                child: Text("房屋详情页")),
          ],
        ));
  }
}
