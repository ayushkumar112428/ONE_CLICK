import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myapp/src/itemdata/images.dart';

class SliderAdd extends StatelessWidget {
  SliderAdd({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CarouselSlider(
        options: CarouselOptions(
          viewportFraction: 1,
          height: 200,
          autoPlay: true,
          enlargeCenterPage: true,
        ),
        items: _imgURl.map((imgpath) {
          return Builder(builder: (BuildContext context) {
            return GestureDetector(
              onDoubleTap: () {},
              child: Container(
                height: 150,
                margin: const EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Card(
                  child: Image.asset(
                    imgpath,
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width*0.9,
                    ),
                  ),
              ),
            );
          });
        }).toList(),
      ),
    );
  }
  final List _imgURl = [
    sl1,
    sl2,
    sl3,
    sl4,
    sl5,
  ];
}