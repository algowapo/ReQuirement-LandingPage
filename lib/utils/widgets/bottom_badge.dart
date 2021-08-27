import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomBadge extends StatelessWidget {
  final String? mainText;
  final String? secondaryText;
  final String? iconRoute;

  const BottomBadge(
      {Key? key, this.mainText, this.secondaryText, this.iconRoute})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Image.asset(
              iconRoute!,
              width: screenSize.width / 20,
            ),
          ),
          Container(
            width: screenSize.width / 8,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(
              top: 20,
            ),
            child: Text(
              mainText!,
              style: GoogleFonts.montserrat(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: screenSize.width / 8,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(
              top: 20,
            ),
            child: Text(
              secondaryText!,
              style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Color(0xFF99a1ad),
                height: 1.8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
