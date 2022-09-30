import 'package:flutter/material.dart';
import 'package:flutter_slides/constants/constants.dart';

import '../widgets/text_widget.dart';

class SlidePageFour extends StatelessWidget {
  const SlidePageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 0),
      decoration: const BoxDecoration(
        color: Color(0xffF3F3F3),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://media1.giphy.com/media/wC1GCb9HBojuVCYbFM/200.webp?cid=ecf05e47scapz5rwmo9ln4iai9w7ipkl8acek12w4l2mvvox&rid=200.webp&ct=g',
          ),
          const SizedBox(height: 20),
          const TextWidgets(
            text: "Everything in Flutter are widgets , widgets...",
            textColor: Constants.textColor,
            textFontWeight: FontWeight.bold,
            textSize: 50,
          ),
        ],
      ),
    );
  }
}
