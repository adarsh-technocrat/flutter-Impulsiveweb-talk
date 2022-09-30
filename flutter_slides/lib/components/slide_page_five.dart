import 'package:flutter/material.dart';
import 'package:flutter_slides/constants/constants.dart';
import 'package:flutter_slides/widgets/text_widget.dart';

class SlidePageFive extends StatelessWidget {
  const SlidePageFive({Key? key}) : super(key: key);

  static List<String> listOFPoints = [
    '\u2022 If you’re coming to Flutter from an imperative framework (such as Android SDK or iOS UIKit), you need to start thinking about app development from a new perspective.',
    '\u2022 Flutter is declarative. This means that Flutter builds its user interface to reflect the current state of your app:',
    '\u2022 When the state of your app changes (for example, the user flips a switch in the settings screen), you change the state, and that triggers a redraw of the user interface.'
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
                    text: "Start thinking declaratively",
                    textColor: Constants.textColor,
                    textFontWeight: FontWeight.bold,
                    textSize: 50,
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      listOFPoints.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: TextWidgets(
                          text: listOFPoints[index],
                          textColor: Constants.textColor,
                          textFontWeight: FontWeight.normal,
                          textSize: 18,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
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
                  left: 200,
                  right: 200,
                  top: 50,
                  child: Row(
                    children: const [
                      TextWidgets(
                          text: "Imperative style",
                          textColor: Colors.black,
                          textFontWeight: FontWeight.bold,
                          textSize: 20),
                      TextWidgets(
                          text: " | ",
                          textColor: Colors.white,
                          textFontWeight: FontWeight.normal,
                          textSize: 20),
                      TextWidgets(
                          text: "Declarative style",
                          textColor: Colors.black,
                          textFontWeight: FontWeight.bold,
                          textSize: 20),
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  child: Image.network(
                    'https://docs.flutter.dev/assets/images/docs/declarativeUIchanges.png',
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: -200,
                  child: Image.network(
                    'https://media0.giphy.com/media/n03KjzUqXeDRe/giphy.webp?cid=ecf05e47jtt61thlm04o2zuejftbizobg2hgflua3x05jsbf&rid=giphy.webp&ct=g',
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
