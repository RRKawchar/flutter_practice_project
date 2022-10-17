
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Slider1 extends StatelessWidget {
  Slider1({Key? key}) : super(key: key);

  final List<Widget> imgList = [

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:SizedBox(
            height: 150.0,
            width: 300.0,
            child: CarouselSlider(
                items: [
                  Container(
                    height: 100,
                    width: 300,
                    color: Colors.green,
                  )
                ],
                options: CarouselOptions(
                  height: 400,
                  aspectRatio: 16/9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                )
            )
        ),
      ),
    );
  }
}
