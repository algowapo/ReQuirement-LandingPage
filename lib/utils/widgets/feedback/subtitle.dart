import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';

class SubTitle extends StatelessWidget {
  final double? fontSize;

  const SubTitle({Key? key, this.fontSize}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      'Ingresa tus datos:',
      style: GoogleFonts.montserrat(
        color: Colors.black87,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      ),
      minFontSize: 20,
      stepGranularity: 1,
      maxLines: 1,
    );
  }
}
