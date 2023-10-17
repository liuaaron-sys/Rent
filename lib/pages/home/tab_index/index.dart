import 'package:Rent/widgets/common_swiper.dart';
import 'package:flutter/material.dart';

import 'index_navigator.dart';

class TabIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tabIndex'),
      ),
      body: ListView(
        children: [CommonSwiper(), IndexNavigator()],
      ),
    );
  }
}
