import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Great digital agency since 2010',
            style: GoogleFonts.montserrat(
              color: Colors.black87,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Creative and professional agency',
            style: GoogleFonts.montserrat(
              color: Color(0xFF99a1ad),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Our business plan is to create a good requirement set for the main enterprises in the area that are most likely to develop the same requirements over and over due to the similarity between the products they develop.',
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Color(0xFF99a1ad),
              height: 1.8,
            ),
          ),
        ],
      ),
    );
  }
}
