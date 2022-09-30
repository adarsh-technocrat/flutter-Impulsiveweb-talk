import 'package:flutter/material.dart';
import 'package:flutter_slides/constants/constants.dart';

import '../widgets/text_widget.dart';

class SlidePageSeven extends StatelessWidget {
  const SlidePageSeven({Key? key}) : super(key: key);

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
            'https://media2.giphy.com/media/dvsQt2qh45tVl6YipK/giphy.gif',
          ),
          const SizedBox(height: 20),
          const TextWidgets(
            text: "Dhanyavad🙏",
            textColor: Constants.textColor,
            textFontWeight: FontWeight.bold,
            textSize: 50,
          ),
        ],
      ),
    );
  }
}
