import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slides/components/slide_page_five.dart';
import 'package:flutter_slides/components/slide_page_one.dart';
import 'package:flutter_slides/components/slide_page_seven.dart';
import 'package:flutter_slides/components/slide_page_six.dart';
import 'package:flutter_slides/components/slide_page_three.dart';
import 'package:flutter_slides/components/slide_page_two.dart';
import 'package:flutter_slides/components/stide_page_four.dart';

class SlideShow extends StatelessWidget {
  const SlideShow({Key? key}) : super(key: key);

  static CarouselController buttonCarouselController = CarouselController();

  static List<Widget> listOfWidgets = const [
    SlidePageOne(),
    SlidePageTwo(),
    SlidePageThree(),
    SlidePageFour(),
    SlidePageFive(),
    SlidePageSix(),
    SlidePageSeven(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CarouselSlider(
          options: CarouselOptions(
              height: MediaQuery.of(context).size.width,
              viewportFraction: 3 / 3),
          carouselController: buttonCarouselController,
          items: listOfWidgets.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return Container(child: item);
              },
            );
          }).toList(),
        ));
  }
}
