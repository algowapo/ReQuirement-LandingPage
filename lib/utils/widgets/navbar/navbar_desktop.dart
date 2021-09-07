import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/utils/helpers/style.dart';
import 'package:landing_page/utils/widgets/custom_button.dart';
import 'package:landing_page/utils/widgets/custom_icon_button.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBar extends StatelessWidget {
  NavBar({Key? key}) : super(key: key);

  final _isHovering = [false, false].obs;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 20),
            Text(
              'ReQuirement',
              style: GoogleFonts.montserrat(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: screenSize.width / 8,
                  ),
                  Obx(
                    () => InkWell(
                      onHover: (value) {
                        value ? _isHovering[0] = true : _isHovering[0] = false;
                      },
                      hoverColor: Colors.transparent,
                      onTap: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 12),
                          Text(
                            'Inicio',
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: _isHovering[0] ? active : disable,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Visibility(
                            visible: _isHovering[0],
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            child: Container(
                              height: 7,
                              width: 7,
                              decoration: BoxDecoration(
                                  color: active,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width / 20,
                  ),
                  Obx(
                    () => InkWell(
                      onHover: (value) {
                        value ? _isHovering[1] = true : _isHovering[1] = false;
                      },
                      hoverColor: Colors.transparent,
                      onTap: () {
                        Navigator.pushNamed(context, '/feedback');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 12),
                          Text(
                            'Ayúdanos a Mejorar',
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: _isHovering[1] ? active : disable,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Visibility(
                            visible: _isHovering[1],
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            child: Container(
                              height: 7,
                              width: 7,
                              decoration: BoxDecoration(
                                  color: active,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width / 20,
                  ),
                  CustomIconButton(
                    icon: Icons.person,
                    text: 'Regístrate',
                    function: _launchURL,
                  ),
                  SizedBox(
                    width: screenSize.width / 40,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const _url = 'https://flutter.dev';

void _launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
