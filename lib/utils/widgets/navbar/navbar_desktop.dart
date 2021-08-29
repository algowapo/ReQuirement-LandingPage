import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/utils/helpers/style.dart';
import 'package:landing_page/utils/widgets/custom_button.dart';

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
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 12),
                          Text(
                            'Pricing',
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
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 12),
                          Text(
                            'Log In',
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
                  CustomButtom(
                    text: 'Register',
                    function: () {
                      print('button was pressed');
                    },
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
