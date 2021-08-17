import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/app/modules/home/controllers/home_controller.dart';
import 'package:landing_page/utils/helpers/responsive.dart';
import 'package:landing_page/utils/helpers/style.dart';
import 'package:landing_page/utils/widgets/bottom_text_widget.dart';
import 'package:landing_page/utils/widgets/custom_button.dart';

class DesktopView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
        constraints: BoxConstraints(maxWidth: 1440),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              width: screenSize.width / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 15),
                    child: Text(
                      "Lorem ipsum dolor sit amet.",
                      style: GoogleFonts.roboto(
                          color: active,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "Lorem ipsum dolor "),
                        TextSpan(
                            text: "sit",
                            style: GoogleFonts.roboto(color: active)),
                        TextSpan(text: " amet, consectetur "),
                        TextSpan(
                            text: "adipiscing elit.",
                            style: GoogleFonts.roboto(color: active)),
                        TextSpan(text: " Suspendisse id sapien."),
                      ],
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold, fontSize: 38),
                    ),
                  ),
                  Visibility(
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet eros id ligula semper, et viverra massa imperdiet. Maecenas commodo vestibulum ante, in ultricies diam mattis quis. Cras et purus at justo vestibulum interdum. Nunc dignissim blandit libero, sollicitudin fermentum libero feugiat eget.",
                      style: GoogleFonts.roboto(
                          fontSize: 20, letterSpacing: 1.5, height: 1.5),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
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
                          padding: EdgeInsets.only(left: 8),
                          child: TextField(
                            decoration: InputDecoration(
                                icon: Icon(Icons.email_outlined),
                                hintText: "Enter your email",
                                border: InputBorder.none),
                          ),
                        ),
                        CustomButtom(text: "Get Started")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height / 14,
                  ),
                  Visibility(
                    visible: screenSize.height > 700,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BottomText(
                          mainText: "1k+",
                          secondaryText: "Projects Created",
                        ),
                        BottomText(
                          mainText: "1k+",
                          secondaryText: "Projects Created",
                        ),
                        BottomText(
                          mainText: "1k+",
                          secondaryText: "Projects Created",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              width: screenSize.width / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/images/img1.png",
                    width: screenSize.width / 1.9,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
