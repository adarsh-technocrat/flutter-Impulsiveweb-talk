import 'package:flutter/material.dart';
import 'package:flutter_slides/constants/constants.dart';

import '../widgets/text_widget.dart';

class SlidePageSix extends StatelessWidget {
  const SlidePageSix({Key? key}) : super(key: key);

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
            'https://c.tenor.com/ekUcLfSGNAQAAAAC/abhi-maza-aayega-na-bhidu-johnny-lever.gif',
          ),
          const SizedBox(height: 20),
          const TextWidgets(
            text: "Now Lets.. Do Some Code </>",
            textColor: Constants.textColor,
            textFontWeight: FontWeight.bold,
            textSize: 50,
          ),
        ],
      ),
    );
  }
}
