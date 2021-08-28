import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            'Great digital agency since 2010',
            style: GoogleFonts.montserrat(
              color: Colors.black87,
              fontSize: screenSize.height / 20,
              fontWeight: FontWeight.bold,
            ),
            stepGranularity: 1,
            maxLines: 2,
          ),
          SizedBox(
            height: 30,
          ),
          AutoSizeText(
            'Creative and professional agency',
            style: GoogleFonts.montserrat(
              color: Color(0xFF99a1ad),
              fontSize: screenSize.height / 30,
              fontWeight: FontWeight.bold,
            ),
            minFontSize: 16,
            stepGranularity: 1,
            maxLines: 2,
          ),
          SizedBox(
            height: 20,
          ),
          AutoSizeText(
            'Our business plan is to create a good requirement set for the main enterprises in the area that are most likely to develop the same requirements over and over due to the similarity between the products they develop.',
            style: GoogleFonts.montserrat(
              fontSize: screenSize.height / 100,
              fontWeight: FontWeight.normal,
              color: Color(0xFF99a1ad),
              height: screenSize.height / 400,
            ),
            minFontSize: 16,
            stepGranularity: 1,
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
