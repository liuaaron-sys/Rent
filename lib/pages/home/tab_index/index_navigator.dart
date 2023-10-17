import 'package:flutter/material.dart';

import 'index_navigatior_item.dart';

class IndexNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 6.0, bottom: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: indexNavigatorList
            .map((item) => InkWell(
                  onTap: () {
                    item.onTap(context);
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        item.imageUri,
                        width: 47.5,
                      ),
                      Text(
                        item.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      )
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
