import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/utils/helpers/style.dart';

class CustomIconButton extends StatelessWidget {
  final String? text;
  final IconData? icon;
  final Function? function;

  const CustomIconButton({Key? key, this.text, this.icon, this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ElevatedButton.icon(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            active,
          ),
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 30,
            ),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
          ),
        ),
        label: Text(
          text!,
          style: GoogleFonts.montserrat(
            fontSize: 15,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
        icon: Icon(
          icon!,
        ),
        onPressed: () {
          function!();
        },
      ),
    );
  }
}
