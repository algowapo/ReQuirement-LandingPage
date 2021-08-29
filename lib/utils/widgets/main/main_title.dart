import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTitle extends StatelessWidget {
  final double? fontSize;

  const MainTitle({Key? key, this.fontSize}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      'ReQuirement',
      style: GoogleFonts.montserrat(
        color: Colors.black87,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
      minFontSize: 60,
      stepGranularity: 1,
      maxLines: 1,
    );
  }
}
