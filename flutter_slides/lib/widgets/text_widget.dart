import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidgets extends StatelessWidget {
  final String text;
  final Color textColor;
  final FontWeight textFontWeight;
  final double textSize;
  final double? height;

  const TextWidgets(
      {super.key,
      required this.text,
      required this.textColor,
      required this.textFontWeight,
      required this.textSize,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          textStyle: TextStyle(
        height: height,
        color: textColor,
        fontSize: textSize,
        fontWeight: textFontWeight,
      )),
    );
  }
}
