import 'package:flutter/material.dart';
import 'package:flutter_slides/constants/constants.dart';
import 'package:flutter_slides/widgets/text_widget.dart';

class SlidePageThree extends StatelessWidget {
  const SlidePageThree({Key? key}) : super(key: key);

  static List<String> dartPointList = [
    '\u2022 Dart is a client-optimized language for developing fast apps on any platform. ',
    '\u2022 The Dart language is type safe ( With sound null safety, Dart can protect you from null exceptions at runtime through static code analysis )',
    'Native platform: For apps targeting mobile and desktop devices, Dart includes both a Dart VM with just-in-time (JIT) compilation and an ahead-of-time (AOT) compiler for producing machine code.',
    'Web platform: For apps targeting the web, Dart can compile for development or production purposes. Its web compiler translates Dart into JavaScript.'
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
                    text: "Dart Programming Language",
                    textColor: Constants.textColor,
                    textFontWeight: FontWeight.bold,
                    textSize: 50,
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      dartPointList.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: TextWidgets(
                          text: dartPointList[index],
                          textColor: Constants.textColor,
                          textFontWeight: FontWeight.normal,
                          textSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Container(
                  color: const Color(0xff12202F),
                  child: Container(),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(50),
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png',
                      height: 400,
                    ),
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
