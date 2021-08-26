import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomText extends StatelessWidget {
  const BottomText({Key? key, @required this.mainText, this.secondaryText})
      : super(key: key);

  final String? mainText;
  final String? secondaryText;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "$mainText \n",
          ),
          TextSpan(
            text: "$secondaryText \n",
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.w300),
          )
        ],
        style: GoogleFonts.montserrat(
          fontSize: 58,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
