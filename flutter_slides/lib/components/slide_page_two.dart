import 'package:flutter/material.dart';
import 'package:flutter_slides/constants/constants.dart';
import 'package:flutter_slides/widgets/text_widget.dart';

class SlidePageTwo extends StatelessWidget {
  const SlidePageTwo({Key? key}) : super(key: key);

  static List<String> listOFPrerequisites = [
    '\u2022 I have worked with Dart language.',
    '\u2022 I have worked with Object Oriented Languages such as Java, C++ and I’m comfortable with OOP concepts such as Classes, Objects, Methods, Inheritance, Abstraction, etc',
    '\u2022 I am a mobile developer, have worked with Android or iOS native or React Native or Xamarin or Ionic or other mobile development framework.'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 0),
      decoration: const BoxDecoration(color: Color(0xffF3F3F3)),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(100.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextWidgets(
                    text: "Some prerequisites",
                    textColor: Constants.textColor,
                    textFontWeight: FontWeight.bold,
                    textSize: 50,
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      listOFPrerequisites.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: TextWidgets(
                          text: listOFPrerequisites[index],
                          textColor: Constants.textColor,
                          textFontWeight: FontWeight.normal,
                          textSize: 18,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Container(
                  color: const Color(0xffE09442),
                  child: Container(),
                ),
                Positioned(
                  bottom: 0,
                  top: 0,
                  left: 0,
                  child: Image.network(
                    'https://media0.giphy.com/media/wRcgj4RoG2uwtjcOPD/giphy.gif?cid=ecf05e47l6vofl2dumexy4ivbrywypge4qaxret1d2pho7v2&rid=giphy.gif&ct=g',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
