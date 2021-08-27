import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/utils/helpers/style.dart';

class HomeSubtitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
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
          fontSize: 38,
        ),
      ),
    );
  }
}
