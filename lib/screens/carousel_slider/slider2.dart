import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Slider2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2, 3, 4, 5];
    return Scaffold(
      appBar: AppBar(title: Text('Basic demo')),
      body: Container(
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(20)
        ),
          child: CarouselSlider(
            options: CarouselOptions(
              height: 200,
              initialPage: list.length

            ),
            items: list
                .map((item) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
              decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  color: Colors.green
              ),
              child: Center(child: Text(item.toString())),
            ),
                ))
                .toList(),
          )),
    );
  }
}