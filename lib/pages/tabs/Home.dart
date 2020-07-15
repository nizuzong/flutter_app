import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 轮播图
  Widget _swiperWidget () {
    List<Map> imgList = [
      { "url": "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1594824718853&di=eb7b994196d74d034acce6e514d3b90d&imgtype=0&src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201302%2F21%2F213315g7r50o7yhwgo9og7.jpg"},
      { "url": "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1594824718850&di=801acb351cb1d2f5769e7e60b9a19bc6&imgtype=0&src=http%3A%2F%2F01.minipic.eastday.com%2F20170113%2F20170113174441_4a700387e67e0119e06a111ee2292bf7_10.jpeg"},
      { "url": "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1594824718848&di=1869bc96565b9eff1a6b27108a0464ff&imgtype=0&src=http%3A%2F%2F01.minipic.eastday.com%2F20170504%2F20170504155016_6e0cc63978e7c7fc4f1cf86a3b5e1105_10.jpeg"},
      { "url": "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1594824847703&di=3eff71e7941e9f8f7856749630ff2031&imgtype=0&src=http%3A%2F%2Fpic30.nipic.com%2F20130625%2F7447430_153500063000_2.jpg"},
    ];
    return Container(
      child: AspectRatio(
        aspectRatio: 2/1,
        child: Swiper(
          itemBuilder: (BuildContext context,int index){
            return new Image.network(imgList[index]["url"],fit: BoxFit.fill,);
          },
          itemCount: imgList.length,
          pagination: new SwiperPagination(),
          autoplay: true,
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        _swiperWidget()
      ],
    );
  }
}