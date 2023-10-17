import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

const List<String> defaultImages = [
  'https://pics6.baidu.com/feed/a686c9177f3e670968e8b79b58616d36f9dc5518.jpeg@f_auto?token=d6f0c16c5d94b0b4dc6f424dc5b33fee',
  'https://pics3.baidu.com/feed/91529822720e0cf31f48522057e00014bc09aae4.jpeg@f_auto?token=80b81680d7cd3f7fdf92393097df7066',
  'https://pics5.baidu.com/feed/902397dda144ad344e1fb4708e04feff33ad85d2.jpeg@f_auto?token=76d9066273b8b7a7282190691d9f6164'
];

class CommonSwiper extends StatelessWidget {
  final List<String> images;

  const CommonSwiper({Key? key, this.images = defaultImages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.width;
    return Container(
      height: 200,
      child: Swiper(
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            images[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: images.length,
        pagination: new SwiperPagination(),
        // control: new SwiperControl(),
      ),
    );
  }
}
