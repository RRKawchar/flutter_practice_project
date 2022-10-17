import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
   SearchScreen({Key? key}) : super(key: key);

  List<String> list = [
   "assets/images/cat (2) 1.png",
    "assets/images/logo.jfif"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),

          ),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.clear),

                ),
                hintText: "Search....",
                border: InputBorder.none
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
         height: 200,
       // aspectRatio: 16/9,
        //viewportFraction: 0.8,
        initialPage: 0,
        //enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        //enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
       ),
            items: list
                .map((item) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green
                ),
                child: Center(child: Image.asset(item.toString())),
              ),
            ))
                .toList(),
          )
        ],
      ),
    );
  }
}
