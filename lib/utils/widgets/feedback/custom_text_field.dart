import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/utils/helpers/style.dart';

class CustomTextField extends StatelessWidget {
  final String? name;
  final String? hint;
  final Size? screenSize;
  final double? height;
  final double? width;
  final double? maxWidth;
  final TextEditingController? controller;

  const CustomTextField(
      {Key? key,
      this.name,
      this.hint,
      this.screenSize,
      this.height,
      this.width,
      this.maxWidth,
      this.controller})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 5.0, bottom: 5.0),
            child: Text(
              name!,
              style: GoogleFonts.montserrat(
                color: gray,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(bottom: 10.0),
            padding: EdgeInsets.only(left: 8.0),
            constraints: BoxConstraints(
                maxWidth:
                    maxWidth != null ? maxWidth! : screenSize!.width * .35),
            height: height != null ? height : null,
            width: width != null ? width : screenSize!.width,
            child: TextField(
              decoration: InputDecoration(
                hintText: hint!,
                hintStyle: GoogleFonts.montserrat(
                  color: gray,
                  fontWeight: FontWeight.w300,
                ),
                border: InputBorder.none,
              ),
              controller: controller,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: gray),
            ),
          ),
        ],
      ),
    );
  }
}
