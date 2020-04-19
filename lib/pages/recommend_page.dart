import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class RecommendPage extends StatefulWidget {
  @override
  _RecommendPageState createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {

  List _imageUrls = [
    'http://p1.music.126.net/yQ6ifTIxGxANpjqijt_t2A==/109951164917862041.jpg?imageView&quality=89',
    'http://p1.music.126.net/fYNBuER6m_DZzU5uP9R59g==/109951164917865460.jpg?imageView&quality=89',
    'http://p1.music.126.net/MZnqr92_aB6NuieEbINYfg==/109951164918833072.jpg?imageView&quality=89',
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 160,
              child: new Swiper(
                itemCount: _imageUrls.length,
                autoplay: true,
                itemBuilder: (BuildContext context,int index){
                  return new Image.network(
                    _imageUrls[index],
                    fit: BoxFit.fill
                  );
                },
                pagination: new SwiperPagination(
                  builder: DotSwiperPaginationBuilder(
                    color: Color(0xffffffff),
                    activeColor: Color(0xffd43c33),
                    size: 8.0,
                    activeSize: 10.0
                  )
                ),
              ),
            )
          ]
        )
      )
    );
  }

}