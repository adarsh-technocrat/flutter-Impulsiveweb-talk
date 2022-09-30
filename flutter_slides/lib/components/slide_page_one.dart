import 'package:flutter/material.dart';
import 'package:flutter_slides/constants/constants.dart';
import 'package:flutter_slides/widgets/text_widget.dart';

class SlidePageOne extends StatelessWidget {
  const SlidePageOne({Key? key}) : super(key: key);

  static List<String> listOFplatforms = [
    '\u2022 Android	',
    '\u2022 iOS',
    '\u2022 Linux',
    '\u2022 Web',
    '\u2022 Windows',
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
                    text: "Introduction to Flutter",
                    textColor: Constants.textColor,
                    textFontWeight: FontWeight.bold,
                    textSize: 50,
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: const TextWidgets(
                      text:
                          "Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.",
                      textColor: Constants.textColor,
                      textFontWeight: FontWeight.w400,
                      textSize: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      listOFplatforms.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: TextWidgets(
                          text: listOFplatforms[index],
                          textColor: Constants.textColor,
                          textFontWeight: FontWeight.normal,
                          textSize: 18,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 80),
                  TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Constants.textColor,
                      ),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextWidgets(
                          text: "Let's Begin",
                          textColor: Colors.white,
                          textFontWeight: FontWeight.normal,
                          textSize: 16,
                        ),
                      ))
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
                  left: 150,
                  child: Image.asset(
                    'assets/image/phone.png',
                    height: 500,
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
