import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/app/modules/home/controllers/home_controller.dart';
import 'package:landing_page/utils/helpers/style.dart';
import 'package:landing_page/utils/widgets/custom_button.dart';

class MobileView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: 450),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(text: "Lorem ipsum dolor "),
                    TextSpan(
                        text: "sit", style: GoogleFonts.roboto(color: active)),
                    TextSpan(text: " amet, consectetur "),
                    TextSpan(
                        text: "adipiscing elit.",
                        style: GoogleFonts.roboto(color: active)),
                    TextSpan(text: " Suspendisse id sapien."),
                  ],
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          constraints: BoxConstraints(maxWidth: 450),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet eros id ligula semper, et viverra massa imperdiet. Maecenas commodo vestibulum ante, in ultricies diam mattis quis. Cras et purus at justo vestibulum interdum. Nunc dignissim blandit libero, sollicitudin fermentum libero feugiat eget.",
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(letterSpacing: 1.5, height: 1.5),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          constraints: BoxConstraints(maxWidth: 450),
          padding: EdgeInsets.all(4),
          margin: EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  offset: Offset(0, 40),
                  blurRadius: 80),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: screenSize.width / 4,
                padding: EdgeInsets.only(left: 4),
                child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.email_outlined),
                      hintText: "Email",
                      border: InputBorder.none),
                ),
              ),
              CustomButtom(text: "Get Started")
            ],
          ),
        ),
      ],
    );
  }
}
