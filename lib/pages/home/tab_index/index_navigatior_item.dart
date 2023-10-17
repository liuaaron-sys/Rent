import 'package:Rent/routes.dart';
import 'package:flutter/cupertino.dart';

class IndexNavigatorItem {
  final String title;
  final String imageUri;
  final Function(BuildContext context) onTap;

  IndexNavigatorItem(this.title, this.imageUri, this.onTap);
}

List<IndexNavigatorItem> indexNavigatorList = [
  IndexNavigatorItem('整租','static/images/1.png', (BuildContext context){
    Navigator.of(context).pushNamed(Routes.login);
  }),
  IndexNavigatorItem('合租','static/images/2.png', (BuildContext context){
    Navigator.of(context).pushNamed(Routes.login);
  }),
  IndexNavigatorItem('单租','static/images/3.png', (BuildContext context){
    Navigator.of(context).pushNamed(Routes.login);
  }),
];