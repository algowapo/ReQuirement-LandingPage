import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:landing_page/utils/helpers/style.dart';

class HomeSubtitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return AutoSizeText.rich(
      TextSpan(
        children: [
          TextSpan(text: 'Generar tus '),
          TextSpan(
            text: 'requerimientos ',
            style: GoogleFonts.montserrat(
              color: active,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(text: 'nunca fue tan '),
          TextSpan(
            text: 'fácil ',
            style: GoogleFonts.montserrat(
              color: active,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(text: 'y '),
          TextSpan(
            text: 'sencillo.',
            style: GoogleFonts.montserrat(
              color: active,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.normal,
          fontSize: screenSize.height / 25,
        ),
      ),
      stepGranularity: 1,
      maxLines: 3,
    );
  }
}
