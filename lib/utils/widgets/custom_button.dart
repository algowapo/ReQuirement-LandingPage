import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/utils/helpers/style.dart';

class CustomButtom extends StatelessWidget {
  final String text;
  final Function? function;
  const CustomButtom({Key? key, required this.text, this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
            color: active, borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        child: Text(
          text,
          style: GoogleFonts.montserrat(
            fontSize: 15,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
      onTap: () {
        function!();
      },
    );
  }
}
